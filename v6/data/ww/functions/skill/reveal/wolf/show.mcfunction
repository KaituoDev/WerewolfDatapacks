## CONTEXT: players have been tagged with to_show

function ww:chat/separator

execute if entity @a[tag=to_show,tag=alive] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"其他的狼同伴有: "},{"selector":"@a[tag=to_show,tag=alive]","bold":true}]

execute if entity @a[tag=to_show,tag=!alive] run tellraw @s [{"text":"已死亡: ","bold":false},{"selector":"@a[tag=to_show,tag=!alive]","color":"dark_gray","bold":true}]

execute unless entity @a[tag=to_show] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"","bold":false},{"text":"你是場上僅存的狼種","color":"red","bold":true}]

function ww:chat/separator