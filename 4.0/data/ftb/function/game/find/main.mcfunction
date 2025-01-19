# context: server

execute as @e[tag=ftb.interaction] at @s run function ftb:click

scoreboard players remove %time ftb.system 1
execute store result storage ftb:temp secondsLeft int 0.05 run scoreboard players get %time ftb.system
execute store result bossbar ftb:game_status value run scoreboard players get %time ftb.system
bossbar set ftb:game_status name [ \
  {"text":"找按鈕倒數 ","color":"yellow","bold":true}, \
  {"nbt":"secondsLeft","storage":"ftb:temp","color":"gold","bold":true} \
]

execute if score %buttonsLeft ftb.system matches 0 run return run function ftb:game/end
execute if score %buttonsLeft ftb.system matches 1 as @p[tag=!ww.has_role] at @s run \
  function ftb:game/find/one_left

execute unless entity @a[tag=!ww.has_role] run return run function ftb:game/end
execute if score %time ftb.system matches ..0 run function ftb:game/end

execute as @a[tag=!ww.has_role] at @s run function ftb:track/loop