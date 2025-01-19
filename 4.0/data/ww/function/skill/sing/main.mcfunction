# context: @s = player | villager
# location: at @s

scoreboard players remove @s ww.sing 1

particle note ~ ~ ~ 7 7 7 0 40 normal @a

tag @s add this

execute as @e[predicate=ww:alive,distance=..10,tag=!this] at @s run \
  tp @s ~ ~ ~ facing entity @n[tag=this] feet

execute as @e[tag=ww.killer_ai,type=zombified_piglin,distance=..10] at @s run \
  tp @s ~ ~ ~ facing entity @n[tag=this] feet

execute as @e[tag=ww.mount,distance=..10] at @s run \
  tp @s ~ ~ ~ facing entity @n[tag=this] feet

execute if entity @s[tag=!ww.fool] run function ww:skill/sing/normal
execute if entity @s[tag=ww.fool] run function ww:skill/sing/fool

tag @s remove this