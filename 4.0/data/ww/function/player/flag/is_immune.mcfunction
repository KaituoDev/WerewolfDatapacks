# context: @s = player | villager

# ninjutsu tree (ensures there's an attacker)
# execute on attacker on target if score @s ww.ninjaTree matches 1.. run \
#   function ww:skill/ninjutsu_activate/effects/tree/on_hit

# conditions
execute if predicate ww:is_night if score %goods ww.system matches 1.. if entity @s[tag=spirits] run return 1
execute if score @s ww.immune matches 1.. run return 1

return 0