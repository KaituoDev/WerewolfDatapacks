# context: @s = villager[predicate=ww:alive]
# location: at @s

# generic
effect give @s resistance infinite 4 true
execute if score @s ww.immune matches 1.. run scoreboard players remove @s ww.immune 1

# force invisibility
execute if score @s ww.forceInvis matches 1.. run function ww:player/force_invis

# timed bomb
execute if score @s ww.bomb matches 1.. run function ww:skill/implant_bomb/countdown

# ninja skill
execute if score @s ww.ninjaTree matches 1.. run function ww:skill/ninjutsu_activate/effects/tree/main

# sing
execute if score @s ww.sing matches 1.. run function ww:skill/sing/main

# charm
execute if score @s ww.charm matches 1.. run function ww:skill/charm/main

# voodoo curses
function ww:skill/voodoo_needle/main

execute if predicate ww:is_night if entity @e[predicate=ww:danger_entity,distance=..5] run function ww:ai/in_danger

function ww:game/hit_villager