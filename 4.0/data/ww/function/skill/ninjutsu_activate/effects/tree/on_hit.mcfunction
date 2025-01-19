# context: @s = player | villager

execute if entity @s[tag=!ww.fool] run scoreboard players add @s ww.forceInvis 80

execute if entity @s[tag=ww.fool] run function ww:skill/ninjutsu_activate/effects/tree/swap

# to indicate immune
return 1