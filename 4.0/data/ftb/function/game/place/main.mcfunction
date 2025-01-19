# context: server

execute as @a[predicate=ww:player,tag=!ftb.button.placed] at @s run \
  function ftb:button/validate_location

execute as @a[predicate=ww:player,predicate=!ftb:has_button,tag=!ftb.placement.denied,tag=!ftb.button.placed] run \
  function ftb:button/cycle

scoreboard players remove %time ftb.system 1
execute store result storage ftb:temp secondsLeft int 0.05 run scoreboard players get %time ftb.system
execute store result bossbar ftb:game_status value run scoreboard players get %time ftb.system
bossbar set ftb:game_status name [ \
  {"text":"藏按鈕倒數 ","color":"yellow","bold":true}, \
  {"nbt":"secondsLeft","storage":"ftb:temp","color":"gold","bold":true} \
]

title @a[tag=!ftb.button.placed,tag=!ftb.placement.denied] actionbar [{"text":"按 ","color":"gold","italic":false},{"keybind":"key.drop","color":"red","bold":true,"italic":false},{"text":" 切換按鈕種類","color":"gold","italic":false}]

execute unless entity @a[tag=!ftb.button.placed] run return run function ftb:game/place/end
execute if score %time ftb.system matches ..0 run function ftb:game/place/end