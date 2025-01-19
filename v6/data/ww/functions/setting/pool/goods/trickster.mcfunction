## MINIMUM: 1, MAXIMUM: players count - 1
## assigning roles will make sure at least 1 bads and 2 goods

execute store result score %players var if entity @a[predicate=!ww:god]
scoreboard players add %trickster pool 1
execute if score %trickster pool >= %players var run scoreboard players set %trickster pool 0
execute if entity @s[predicate=ww:sneaking] run scoreboard players set %trickster pool 0

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"詐欺師"},{"text":"最大數量已改為 "},{"score":{"name":"%trickster","objective":"pool"},"color":"green","bold":true}]