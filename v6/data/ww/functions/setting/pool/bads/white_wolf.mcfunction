## MINIMUM: 1, MAXIMUM: players count - 1
## assigning roles will make sure at least 1 bads and 2 goods

execute store result score %players var if entity @a[predicate=!ww:god]
scoreboard players add %white_wolf pool 1
execute if score %white_wolf pool >= %players var run scoreboard players set %white_wolf pool 0

execute if entity @s[predicate=ww:sneaking] run scoreboard players set %white_wolf pool 0

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"白狼王"},{"text":"最大數量已改為 "},{"score":{"name":"%white_wolf","objective":"pool"},"color":"green","bold":true}]