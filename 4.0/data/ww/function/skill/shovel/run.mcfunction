# context: @s = player | villager

# right clicking would show the nearest grave info (player name)

execute at @s unless entity @e[tag=ww.grave,distance=..5] run return run \
  function ww:chat/_dm {type: 'warn', message: '請再靠近墓碑'}

execute at @s unless predicate ww:sneaking run return run \
  function ww:chat/_dm {type: 'rich_info', message: '[ \
    {"text":"蹲下","color":"gold","bold":true}, \
    {"text":"+","color":"white","bold":false}, \
    {"text":"右鍵","color":"gold","bold":true}, \
    {"text":" 挖掘 ","color":"white","bold":false}, \
    {"nbt":"data.player","entity":"@n[tag=ww.grave]","color":"green","bold":true}, \
    {"text":" 的墓碑","color":"white","bold":false} \
  ]'}

# sneak + right click = dig up
function ww:skill/shovel/grave/_dig with entity @n[tag=ww.grave] data
kill @n[tag=ww.grave]