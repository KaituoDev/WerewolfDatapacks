## CONTEXT: a player
## OUTPUT: storage ww:game actionbar.inherited

execute if entity @s[tag=inherited] run data modify storage ww:game actionbar.inherited set value '[{"text":"繼承者","color":"dark_purple","bold":true},{"text":" | ","color":"white","bold":false}]'