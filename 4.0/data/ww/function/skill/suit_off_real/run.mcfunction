# context: @s = player

execute if score @s ww.suitCD matches 1.. run return run function ww:chat/_dm {type: 'warn', message: '技能还在冷却'}

scoreboard players set @s ww.suitCD 200
execute if entity @s[tag=ww.fool] run scoreboard players set @s ww.suitCD 400

attribute @s movement_speed base set 0.1

clear @s *[minecraft:custom_data~{suit_up_real:true}]
clear @s *[minecraft:custom_data~{suit_off_real:true}]
function ww:skill/_item_with_custom_model_data {id: 'suit_up_real', custom_model_data: 23329}