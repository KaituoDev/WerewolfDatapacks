# running as alpha wolf

function ww:chat/separator

execute if entity @a[tag=alive,scores={onWolfList=1..},tag=!alpha] run tellraw @s [{"text":"活著但非原初狼: ","bold":false},{"selector":"@a[tag=alive,scores={onWolfList=1..},tag=!alpha]","bold":true}]

execute if entity @a[tag=alive,scores={onWolfList=1..},tag=alpha] run tellraw @s [{"text":"活著原初狼: ","bold":false},{"selector":"@a[tag=alive,scores={onWolfList=1..},tag=alpha]","color":"white","bold":true}]

execute if entity @a[scores={onWolfList=1..},tag=!alive] run tellraw @s [{"text":"已死亡: ","bold":false},{"selector":"@a[scores={onWolfList=1..},tag=!alive]","color":"dark_gray","bold":true}]

execute unless entity @a[scores={onWolfList=1..},tag=!this] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"","bold":false},{"text":"你是場上僅存的狼種","color":"red","bold":true}]

function ww:chat/separator