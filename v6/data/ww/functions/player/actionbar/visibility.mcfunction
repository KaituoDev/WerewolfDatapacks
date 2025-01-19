## OUTPUT: storage ww:game actionbar.visibility

execute if entity @s[predicate=ww:invis] run data modify storage ww:game actionbar.visibility set value '[{"text":" | ","color":"white","bold":false},{"text":"隱形中","color":"dark_aqua","bold":true}]'
execute if entity @s[predicate=!ww:invis] run data modify storage ww:game actionbar.visibility set value '[{"text":" | ","color":"white","bold":false},{"text":"現形中","color":"aqua","bold":true}]'