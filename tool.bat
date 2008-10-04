:TOP
@CLS
@ECHO OFF

Echo Please Enter your MySQL Username and password

sET /p user= Username:
sET /p pass= Password:

REM #########################################################
REM #           Advanced User Configuration Area            #
REM #########################################################
SET world_db=world
SET char_db=logon
SET dumppath=.\trunk\dump
SET port=3306
SET host=127.0.0.1
SET mysqlpath=.\trunk\MySQL
SET world=.\trunk\tables
SET dump=.\trunk\dump
SET fix=.\trunk\fix
REM #########################################################
REM #            DO NOT MODIFY BEYOND THIS POINT            #
REM #########################################################
:menu

CLS
ECHO.
ECHO oooooooooo  ooooo   ooooo   oooooooooo.     oooooooooo.   oooooooooo.  
ECHO 888          888o    888    `888'   `Y8b     888'   `Y8b  `888'   `Y8b 
ECHO 888          888 o   888     888      888    888      888  888     888 
ECHO 888ooooooo   888  o  888     888      888    888      888  888oooo888' 
ECHO 888'         888   o 888     888      888    888      888  888    `88b 
ECHO 888          888    o888     888     d88'    888     d88'  888    .88P 
ECHO oooooooooo  ooooo   ooooo   o888bood8P'     o888bood8P'   o888bood8P'
ECHO.
ECHO.
ECHO	x - Install End DB
ECHO	e - Import a fix (update)
ECHO	b - Back up your database
ECHO	l - Exit the installer
Echo.
SET /p h= Enter a Character:

if %h%==* GOTO error
IF %h%==X GOTO install
IF %h%==x GOTO install
IF %h%==E GOTO fix
if %h%==e GOTO fix
IF %h%==B GOTO dump
IF %h%==b GOTO dump
IF %h%==L GOTO exit
IF %h%==l GOTO exit

:install
CLS
ECHO Dropping old database and importing Ascent Structure SQL...
ECHO.
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% < trunk\Ascent_Structure\4597_world_structure.sql
ECHO Database Dropped.
ECHO.
ECHO  importing table 'ai_agents.sql'
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\ai_agents.sql

ECHO  importing table ai_threattospellid.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\ai_threattospellid.sql

ECHO  importing table creature_formations.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\creature_formations.sql

ECHO  importing table creature_names.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\creature_names.sql

ECHO  importing table creature_proto.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\creature_proto.sql

ECHO  importing table petdefaultspells.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\petdefaultspells.sql

ECHO  importing table npc_gossip_textid.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\npc_gossip_textid.sql

ECHO  importing table npc_monstersay.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\npc_monstersay.sql

ECHO  importing table npc_text.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\npc_text.sql

ECHO  importing table auctionhouse.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\auctionhouse.sql

ECHO  importing table ItemPetFood.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\ItemPetFood.sql

ECHO  importing table Transport_creatures.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\Transport_creatures.sql

ECHO  importing table creatureloot.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\creatureloot.sql

ECHO  importing table fishingloot.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\fishingloot.sql

ECHO  importing table itemloot.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\itemloot.sql

ECHO  importing table item_randomprop_groups.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\item_randomprop_groups.sql

ECHO  importing table item_randomsuffix_groups.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\item_randomsuffix_groups.sql

ECHO  importing table objectloot.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\objectloot.sql

ECHO  importing table prospectingloot.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\prospectingloot.sql

ECHO  importing table disenchantingloot.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\disenchantingloot.sql

ECHO  importing table pickpocketingloot.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\pickpocketingloot.sql

ECHO  importing table skinningloot.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\skinningloot.sql

ECHO  importing table itempages.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\itempages.sql

ECHO  importing table items.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\items.sql

ECHO  importing table vendors.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\vendors.sql

ECHO  importing table gameobject_quest_finisher.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\gameobject_quest_finisher.sql

ECHO  importing table gameobject_quest_starter.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\gameobject_quest_starter.sql

ECHO  importing table creature_quest_finisher.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\creature_quest_finisher.sql

ECHO  importing table creature_quest_starter.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\creature_quest_starter.sql

ECHO  importing table quests.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\quests.sql

ECHO  importing table gameobject_quest_item_binding.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\gameobject_quest_item_binding.sql

ECHO  importing table gameobject_quest_pickup_binding.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\gameobject_quest_pickup_binding.sql

ECHO  importing table reputation_creature_onkill.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\reputation_creature_onkill.sql

ECHO  importing table reputation_faction_onkill.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\reputation_faction_onkill.sql

ECHO  importing table reputation_instance_onkill.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\reputation_instance_onkill.sql

ECHO  importing table playercreateinfo.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\playercreateinfo.sql

ECHO  importing table playercreateinfo_bars.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\playercreateinfo_bars.sql

ECHO  importing table playercreateinfo_items.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\playercreateinfo_items.sql

ECHO  importing table playercreateinfo_skills.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\playercreateinfo_skills.sql

ECHO  importing table playercreateinfo_spells.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\playercreateinfo_spells.sql

ECHO  importing table creature_spawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\creature_spawns.sql

ECHO  importing table creature_staticspawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\creature_staticspawns.sql

ECHO  importing table creature_waypoints.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\creature_waypoints.sql

ECHO  importing table fishing.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\fishing.sql

ECHO  importing table gameobject_spawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\gameobject_spawns.sql

ECHO  importing table gameobject_staticspawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\gameobject_staticspawns.sql

ECHO  importing table banned_pharses.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\banned_pharses.sql

ECHO  importing table weather.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\weather.sql

ECHO  importing table worldmap_info.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\worldmap_info.sql

ECHO  importing table zoneguards.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\zoneguards.sql

ECHO  importing table transport_data.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\transport_data.sql

ECHO  importing table areatriggers.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\areatriggers.sql

ECHO  importing table recall.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\recall.sql

ECHO  importing table graveyards.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\graveyards.sql

ECHO  importing table spelloverride.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\spelloverride.sql

ECHO  importing table spell_disable.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\spell_disable.sql

ECHO  importing table spell_disable_trainers.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\spell_disable_trainers.sql

ECHO  importing table teleport_coords.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\teleport_coords.sql

ECHO  importing table totemspells.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\totemspells.sql

ECHO  importing table trainer_defs.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\trainer_defs.sql

ECHO  importing table trainer_spells.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\trainer_spells.sql

ECHO  importing table spell_proc_data.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\spell_proc_data.sql

ECHO  importing table spell_coef_override.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\spell_coef_override.sql

ECHO  importing table gameobject_names.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\gameobject_names.sql

ECHO  importing table creature_names_localized.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\creature_names_localized.sql

ECHO  importing table gameobject_names_localized.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\gameobject_names_localized.sql

ECHO  importing table itempages_localized.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\itempages_localized.sql

ECHO  importing table items_localized.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\items_localized.sql

ECHO  importing table npc_text_localized.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\npc_text_localized.sql

ECHO  importing table quests_localized.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\quests_localized.sql

ECHO  importing table clientaddons.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\clientaddons.sql

ECHO  importing table command_overrides.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\command_overrides.sql

ECHO  importing table map_checkpoint.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\map_checkpoint.sql

ECHO  importing table wordfilter_character_names.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\wordfilter_character_names.sql

ECHO  importing table wordfilter_chat.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\wordfilter_chat.sql

ECHO  importing table item_quest_association.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\item_quest_association.sql

ECHO  importing table spell_effects_override.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\spell_effects_override.sql

ECHO  importing table spell_proc.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\spell_proc.sql

ECHO  importing table spellfixes.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %world%\spellfixes.sql

ECHO.
ECHO IMPORT COMPLETE! If you need any help or would like to report a bug report it here: http://ugmmo.coarsegaming.com
PAUSE
GOTO menu

:dump
@ECHO OFF
CLS
echo %world_db% Database Export started...
ECHO Dumping Table: ai_agents
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% ai_agents > %dump%\ai_agents.sql
ECHO Dumping Table: ai_threattospellid
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% ai_threattospellid > %dump%\ai_threattospellid.sql
ECHO Dumping Table: areatriggers
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% areatriggers > %dump%\areatriggers.sql
ECHO Dumping Table: auctionhouse
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% auctionhouse > %dump%\auctionhouse.sql
ECHO Dumping Table: clientaddons
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% clientaddons > %dump%\clientaddons.sql
ECHO Dumping Table: command_overrides
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% command_overrides > %dump%\command_overrides.sql
ECHO Dumping Table: creature_formations
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_formations > %dump%\creature_formations.sql
ECHO Dumping Table: creature_creature_timed_emotes
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_timed_emotes > %dump%\creature_timed_emotes.sql
ECHO Dumping Table: creature_names
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_names > %dump%\creature_names.sql
ECHO Dumping Table: creature_Banned Phrases
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% banned_phrases > %dump%\banned_pharses.sql
ECHO Dumping Table: creature_names_localized
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_names_localized > %dump%\creature_names_localized.sql
ECHO Dumping Table: creature_proto
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_proto > %dump%\creature_proto.sql
ECHO Dumping Table: creature_quest_finisher
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_quest_finisher > %dump%\creature_quest_finisher.sql
ECHO Dumping Table: creature_quest_starter
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_quest_starter > %dump%\creature_quest_starter.sql
ECHO Dumping Table: creature_spawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_spawns > %dump%\creature_spawns.sql
ECHO Dumping Table: creature_staticspawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_staticspawns > %dump%\creature_staticspawns.sql
ECHO Dumping Table: creature_waypoints
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_waypoints > %dump%\creature_waypoints.sql
ECHO Dumping Table: creatureloot
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creatureloot > %dump%\creatureloot.sql
ECHO Dumping Table: disenchantingloot
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% disenchantingloot > %dump%\disenchantingloot.sql
ECHO Dumping Table: fishing
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% fishing > %dump%\fishing.sql
ECHO Dumping Table: fishingloot
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% fishingloot > %dump%\fishingloot.sql
ECHO Dumping Table: gameobject_names
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_names > %dump%\gameobject_names.sql
ECHO Dumping Table: gameobject_names_localized
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_names_localized > %dump%\gameobject_names_localized.sql
ECHO Dumping Table: gameobject_quest_finisher
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_quest_finisher > %dump%\gameobject_quest_finisher.sql
ECHO Dumping Table: gameobject_quest_item_binding
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_quest_item_binding > %dump%\gameobject_quest_item_binding.sql
ECHO Dumping Table: Itempetfood
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% itempetfood > %dump%\itempetfood.sql
ECHO Dumping Table: gameobject_quest_pickup_binding
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_quest_pickup_binding > %dump%\gameobject_quest_pickup_binding.sql
ECHO Dumping Table: gameobject_quest_starter
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_quest_starter > %dump%\gameobject_quest_starter.sql
ECHO Dumping Table: gameobject_spawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_spawns > %dump%\gameobject_spawns.sql
ECHO Dumping Table: gameobject_staticspawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_staticspawns > %dump%\gameobject_staticspawns.sql
ECHO Dumping Table: graveyards
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% graveyards > %dump%\graveyards.sql
ECHO Dumping Table: item_randomprop_groups
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% item_randomprop_groups > %dump%\item_randomprop_groups.sql
ECHO Dumping Table: item_randomsuffix_groups
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% item_randomsuffix_groups > %dump%\item_randomsuffix_groups.sql
ECHO Dumping Table: itemloot
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% itemloot > %dump%\itemloot.sql
ECHO Dumping Table: itempages
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% itempages > %dump%\itempages.sql
ECHO Dumping Table: itempages_localized
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% itempages_localized > %dump%\itempages_localized.sql
ECHO Dumping Table: itempetfood
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% itempetfood > %dump%\itempetfood.sql
ECHO Dumping Table: items
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% items > %dump%\items.sql
ECHO Dumping Table: instance_bosses
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_bosses > %dump%\instance_bosses.sql
ECHO Dumping Table: items_localized
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% items_localized > %dump%\items_localized.sql
ECHO Dumping Table: map_checkpoint
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% map_checkpoint > %dump%\map_checkpoint.sql
ECHO Dumping Table: npc_gossip_textid
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% npc_gossip_textid > %dump%\npc_gossip_textid.sql
ECHO Dumping Table: npc_monstersay
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% npc_monstersay > %dump%\npc_monstersay.sql
ECHO Dumping Table: npc_text
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% npc_text > %dump%\npc_text.sql
ECHO Dumping Table: npc_text_localized
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% npc_text_localized > %dump%\npc_text_localized.sql
ECHO Dumping Table: objectloot
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% objectloot > %dump%\objectloot.sql
ECHO Dumping Table: petdefaultspells
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% petdefaultspells > %dump%\petdefaultspells.sql
ECHO Dumping Table: pickpocketingloot
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% pickpocketingloot > %dump%\pickpocketingloot.sql
ECHO Dumping Table: playercreateinfo
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% playercreateinfo > %dump%\playercreateinfo.sql
ECHO Dumping Table: playercreateinfo_bars
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% playercreateinfo_bars > %dump%\playercreateinfo_bars.sql
ECHO Dumping Table: playercreateinfo_items
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% playercreateinfo_items > %dump%\playercreateinfo_items.sql
ECHO Dumping Table: playercreateinfo_skills
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% playercreateinfo_skills > %dump%\playercreateinfo_skills.sql
ECHO Dumping Table: playercreateinfo_spells
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% playercreateinfo_spells > %dump%\playercreateinfo_spells.sql
ECHO Dumping Table: prospectingloot
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% prospectingloot > %dump%\prospectingloot.sql
ECHO Dumping Table: quests
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% quests > %dump%\quests.sql
ECHO Dumping Table: quests_localized
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% quests_localized > %dump%\quests_localized.sql
ECHO Dumping Table: recall
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% recall > %dump%\recall.sql
ECHO Dumping Table: reputation_creature_onkill
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% reputation_creature_onkill > %dump%\reputation_creature_onkill.sql
ECHO Dumping Table: reputation_faction_onkill
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% reputation_faction_onkill > %dump%\reputation_faction_onkill.sql
ECHO Dumping Table: reputation_instance_onkill
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% reputation_instance_onkill > %dump%\reputation_instance_onkill.sql
ECHO Dumping Table: skinningloot
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% skinningloot > %dump%\skinningloot.sql
ECHO Dumping Table: spell_coef_override
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% spell_coef_override > %dump%\spell_coef_override.sql
ECHO Dumping Table: spell_disable
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% spell_disable > %dump%\spell_disable.sql
ECHO Dumping Table: spell_disable_trainers
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% spell_disable_trainers > %dump%\spell_disable_trainers.sql
ECHO Dumping Table: spell_proc_data
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% spell_proc_data > %dump%\spell_proc_data.sql
ECHO Dumping Table: spelloverride
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% spelloverride > %dump%\spelloverride.sql
ECHO Dumping Table: teleport_coords
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% teleport_coords > %dump%\teleport_coords.sql
ECHO Dumping Table: totemspells
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% totemspells > %dump%\totemspells.sql
ECHO Dumping Table: trainer_defs
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% trainer_defs > %dump%\trainer_defs.sql
ECHO Dumping Table: trainer_spells
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% trainer_spells > %dump%\trainer_spells.sql
ECHO Dumping Table: transport_creatures
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% transport_creatures > %dump%\transport_creatures.sql
ECHO Dumping Table: transport_data
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% transport_data > %dump%\transport_data.sql
ECHO Dumping Table: vendors
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% vendors > %dump%\vendors.sql
ECHO Dumping Table: weather
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% weather > %dump%\weather.sql
ECHO Dumping Table: wordfilter_character_names
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% wordfilter_character_names > %dump%\wordfilter_character_names.sql
ECHO Dumping Table: wordfilter_chat
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% wordfilter_chat > %dump%\wordfilter_chat.sql
ECHO Dumping Table: worldmap_info
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% worldmap_info > %dump%\worldmap_info.sql
ECHO Dumping Table: zoneguards
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% zoneguards > %dump%\zoneguards.sql
ECHO Dumping Table: item_quest_association
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% item_quest_association > %dump%\item_quest_association.sql
ECHO Dumping Table: spell_effects_override
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% spell_effects_override > %dump%\spell_effects_override.sql
ECHO Dumping Table: spell_proc
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% spell_proc > %dump%\spell_proc.sql
ECHO Dumping Table: spellfixes
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% spellfixes > %dump%\spellfixes.sql
ECHO Dumping Table: professiondiscoveries
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% professiondiscoveries > %dump%\professiondiscoveries.sql
ECHO Dumping Table: unit_display_sizes
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% unit_display_sizes > %dump%\unit_display_sizes.sql

echo  Finished ... %world_db% exported to %dump% folder...
pause 
GOTO menu

:fix
CLS
ECHO Please input the fix number (fixes are located in /trunk/fix)

Set /p f= Fix #:
ECHO.
ECHO 	End DB is now installing fix %f%...
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %fix%\fix_%ch%.sql
ECHO.
ECHO End DB has successfully imported fix %f%
PAUSE
GOTO menu


:error
CLS
Color 0c
ECHO.
ECHO.
ECHO [ERROR] An error has occured, you will be directed back to the
ECHO [ERROR] main menu.
PAUSE    
GOTO menu  
:exit