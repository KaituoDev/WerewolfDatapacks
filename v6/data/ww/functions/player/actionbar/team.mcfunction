## OUTPUT: storage ww:game actionbar.team

execute if score @s team matches 1.. run data modify storage ww:game actionbar.team set value '[{"text":" | ","color":"white","bold":false},{"text":"第 "},{"score":{"name":"@s","objective":"team"},"color":"green","bold":true},{"text":" 組","color":"white","bold":false}]'