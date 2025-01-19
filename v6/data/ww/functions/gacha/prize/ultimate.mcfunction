scoreboard players remove @s materials 5
scoreboard players add @s ultimate 1

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你獲得了 "},{"text":"終極武器 - 死亡之眼","color":"gold","bold":true},{"text":"(總共","color":"white","bold":false},{"score":{"name":"@s","objective":"ultimate"},"color":"red","bold":true},{"text":"個)","color":"white","bold":false}]

function ww:item/skill/instant_death