# context: server

execute if entity @s[tag=black_wolf] unless score @s ww.ai.rifle_used matches 1 run return run \
 function ww:ai/behavior/role/skill/rifle

execute if entity @s[tag=hunter] unless score @s ww.ai.rifle_used matches 1 run return run \
 function ww:ai/behavior/role/skill/rifle

execute if entity @s[tag=witch] unless score @s ww.ai.poison_potion_used matches 1 run return run \
 function ww:ai/behavior/role/skill/poison_potion
execute if entity @s[tag=witch] unless score @s ww.ai.healing_potion_used matches 1 run return run \
 function ww:ai/behavior/role/skill/healing_potion

execute if entity @s[tag=seer] unless score @s ww.ai.prophecy_used matches 1 run return run \
 function ww:ai/behavior/role/skill/prophecy

execute if entity @s[tag=snow_wolf] unless score @s ww.ai.glow_up_used matches 1 run return run \
 function ww:ai/behavior/role/skill/glow_up

execute if entity @s[tag=cupid,tag=!ww.pairingFinalized] unless score @s ww.ai.pairing_attempted matches 1 run return run \
 function ww:ai/behavior/role/skill/pairing

# ninjutsu in ai/alive_main

execute if entity @s[tag=sadist] unless score @s ww.ai.masochist_search_used matches 1 run return run \
 function ww:ai/behavior/role/skill/masochist_search