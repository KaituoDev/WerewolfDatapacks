# context: @s = player | villager
# location: at @s

scoreboard players remove @s ww.charm 1

particle note ~ ~ ~ 4 4 4 0 40 normal @a

tag @s add this

execute as @e[predicate=ww:alive,distance=..5,tag=!this] at @s run \
  tp @s ~ ~ ~ facing entity @n[tag=this] feet

execute as @e[tag=ww.killer_ai,type=zombified_piglin,distance=..5] at @s run \
  tp @s ~ ~ ~ facing entity @n[tag=this] feet

execute as @e[tag=ww.mount,distance=..5] at @s run \
  tp @s ~ ~ ~ facing entity @n[tag=this] feet

execute if entity @s[tag=!ww.fool] run function ww:skill/charm/normal
execute if entity @s[tag=ww.fool] run function ww:skill/charm/fool

tag @s remove this