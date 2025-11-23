# context: @s = player | villager

# Nils will not show its name while voting
execute if entity @s[tag=nils,predicate=ww:is_invisible] run return 0

return 1