## CONTEXT: @p[tag=this] = current digger, @s = current grave
## Running from ww:skill/shovel

# use inherited tag for skill reveal
# and identify if player has already inherited someone 
tag @p[tag=this] add inherited

tag @p[tag=this] remove digger
tag @p[tag=this] remove goods
# dont clear all tags
# there might be cupid pair tags

# Running as the grave marker
function ww:role/assign/get/__switcher
function ww:role/assign/postprocess

clear @p[tag=this]
# clear @p[tag=this] warped_fungus_on_a_stick{shovel:1b}

# if inherits cupid, let the player pair a new couple
execute as @p[tag=this] run function ww:role/equip

execute as @p[tag=this] run function ww:role/name
tellraw @p[tag=this] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"你變成了","color":"white","bold":false},{"storage":"ww:game","nbt":"role.color","interpret":true}," ",{"storage":"ww:game","nbt":"role.name","interpret":true}]

# kill the current grave
kill @s