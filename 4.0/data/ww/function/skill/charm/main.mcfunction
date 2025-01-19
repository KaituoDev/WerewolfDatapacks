# context: @s = player | villager
# location: at @s

scoreboard players remove @s ww.charm 1

particle heart ~ ~ ~ 7 7 7 0 40 normal @a

tag @s add this

execute if entity @s[tag=!ww.fool] run function ww:skill/charm/normal
execute if entity @s[tag=ww.fool] run function ww:skill/charm/fool

tag @s remove this