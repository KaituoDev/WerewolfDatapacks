execute as @a[scores={officerVoteCount=1..}] if score @s officerVoteCount = %max officerVoteCount run tag @s add max_target

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@a[tag=max_target]","color":"white","bold":true},{"text":" 同票","color":"white","bold":true}]
tag @a remove max_target