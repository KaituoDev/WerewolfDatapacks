## Running as player escaped as a villager
## CONTEXT: @s = victim

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@s","color":"green","bold":true},{"text":" 身為弱小的村民, 逃避了現場, 躲過昨晚的追殺","color":"white","bold":false}]

tag @s remove dying