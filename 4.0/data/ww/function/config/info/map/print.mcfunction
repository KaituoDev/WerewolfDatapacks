# context: @s = player
# inputs: {index}

execute store result score %randomMapEnabled ww.var run data get storage ww:memory config.RANDOM_MAP

$execute unless score %randomMapEnabled ww.var matches 1.. run \
  tellraw @s [ \
    {"text":"地图: ","color":"white","bold":false}, \
    {"storage":"ww:memory","nbt":"config.MAPS[$(index)].name","color":"aqua","bold":true} \
  ]

execute if score %randomMapEnabled ww.var matches 1.. run tellraw @s [ \
  {"text":"地图: ","color":"white","bold":false}, \
  {"text":"游戏开始时随机选择","color":"red","bold":true} \
]