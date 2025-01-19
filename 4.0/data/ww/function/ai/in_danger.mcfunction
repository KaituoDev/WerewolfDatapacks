# context: @s = villager

# ninjutsu skill
execute if entity @s[tag=ninja] unless score @s ww.ai.ninjutsu_used matches 1.. run return run \
 function ww:ai/behavior/role/skill/ninjutsu

# sing skill
execute if entity @s[tag=siren] unless score @s ww.ai.sing_used matches 1.. run return run \
 function ww:ai/behavior/role/skill/sing