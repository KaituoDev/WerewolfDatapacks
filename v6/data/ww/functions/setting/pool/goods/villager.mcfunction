## MINIMUM: 1, MAXIMUM: players count - 1
## assigning roles will make sure at least 1 bads and 2 goods

execute store result score %players var if entity @a[predicate=!ww:god]
scoreboard players add %villager pool 1
execute if score %villager pool >= %players var run scoreboard players set %villager pool 0
execute if entity @s[predicate=ww:sneaking] run scoreboard players set %villager pool 0

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"村民"},{"text":"最大數量已改為 "},{"score":{"name":"%villager","objective":"pool"},"color":"green","bold":true}]