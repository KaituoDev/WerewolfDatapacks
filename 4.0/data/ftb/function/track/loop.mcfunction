# context: @s = player
# location: at @s

data modify storage ftb:temp display set value []

tag @s add this
execute as @e[limit=2,sort=nearest,tag=ftb.interaction] run function ftb:track/format
tag @s remove this

execute at @s facing entity @n[tag=ftb.interaction] eyes positioned ~ ~0.5 ~ positioned ^ ^ ^2 run \
  particle happy_villager ~ ~ ~ 0 0 0 0 1 force @s

execute store result score %count ftb.var run data get storage ftb:temp display

execute if score %count ftb.var matches 1 run title @s actionbar [ \
  {"storage":"ftb:temp","nbt":"display[0].name","interpret":true,"bold":true}, \
  {"text":" 距離 ","color":"dark_aqua","bold":true}, \
  {"storage":"ftb:temp","nbt":"display[0].distance","color":"green","bold":true} \
]

execute if score %count ftb.var matches 2.. run title @s actionbar [ \
  {"storage":"ftb:temp","nbt":"display[0].name","interpret":true,"bold":true}, \
  {"text":" 距離 ","color":"dark_aqua","bold":true}, \
  {"storage":"ftb:temp","nbt":"display[0].distance","color":"green","bold":true}, \
  "  ", \
  {"storage":"ftb:temp","nbt":"display[1].name","interpret":true,"bold":true}, \
  {"text":" 距離 ","color":"dark_aqua","bold":true}, \
  {"storage":"ftb:temp","nbt":"display[1].distance","color":"green","bold":true} \
]