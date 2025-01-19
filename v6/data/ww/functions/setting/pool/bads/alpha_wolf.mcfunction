## MINIMUM: 1, MAXIMUM: players count - 1
## assigning roles will make sure at least 1 bads and 1 goods

execute store result score %players var if entity @a[predicate=!ww:god]
scoreboard players add %alpha_wolf pool 1
execute if score %alpha_wolf pool >= %players var run scoreboard players set %alpha_wolf pool 0

execute if entity @s[predicate=ww:sneaking] run scoreboard players set %alpha_wolf pool 0

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"原初狼"},{"text":"最大數量已改為 "},{"score":{"name":"%alpha_wolf","objective":"pool"},"color":"green","bold":true}]