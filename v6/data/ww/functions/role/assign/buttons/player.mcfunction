## CONTEXT: @p[tag=candidate] = player to tag, @s = button aec getting pressed

tag @p[tag=candidate] add this
function ww:role/assign/get/__switcher
tag @a remove this

execute as @p[tag=candidate] run function ww:role/name

tellraw @p[tag=candidate] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"你成為了 ","bold":false},{"storage":"ww:game","nbt":"role.color","interpret":true},{"storage":"ww:game","nbt":"role.name","interpret":true}]