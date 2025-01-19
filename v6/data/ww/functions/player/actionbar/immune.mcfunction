## CONTEXT: a player
## OUTPUT: storage ww:game actionbar.immune

execute if score @s immune matches 1.. run data modify storage ww:game actionbar.immune set value '[{"text":"無敵 ","color":"red","bold":true},{"score":{"name":"@s","objective":"immune"},"color":"gold"}]'

execute if predicate ww:night if entity @s[tag=immortal] run data modify storage ww:game actionbar.immune set value '[{"text":"無敵 ","color":"red","bold":true},{"text":"永久","color":"gold"}]'