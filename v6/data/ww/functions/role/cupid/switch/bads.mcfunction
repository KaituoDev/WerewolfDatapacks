## Changes campaign from goods to bads

tag @s remove goods
tag @s add bads

scoreboard players set @s onWolfList 1

# tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"由於你所配對的玩家皆為 ","bold":false},{"text":"<狼人陣營>","color":"red","bold":true},{"text":", 你也轉為 ","color":"white","bold":false},{"text":"<狼人陣營>","color":"red","bold":true},{"text":", 但並不會額外獲得其他能力","color":"white","bold":false}]