execute as @a[scores={wolfVoteCount=1..}] if score @s wolfVoteCount = %max wolfVoteCount run tag @s add max_target

tellraw @a[scores={onWolfList=1..}] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@a[tag=max_target]","color":"white","bold":true},{"text":" 同票， 今晚狼群不行動","color":"white","bold":true}]

tag @a remove max_target