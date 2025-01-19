## Running as player saved by witch
## CONTEXT: @s = victim/beneficiary

# placing this command here to ensure voodoo cannot
# place curse after witch healed the player
scoreboard players reset @s curse

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@s","color":"green","bold":true},{"text":" 被女巫救了","color":"white","bold":false}]

tag @s remove dying