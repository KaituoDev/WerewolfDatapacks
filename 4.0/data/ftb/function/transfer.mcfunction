# context: @s = interaction, @p[tag=ftb.this_finder] = player
# location: at @s

# set role for the player
data modify storage ftb:temp setRoleInput set value {}
data modify storage ftb:temp setRoleInput.id set from entity @n[tag=ftb.marker] data.id

tag @s add this
execute as @p[tag=ftb.this_finder] run function ww:chat/_dm {type: 'rich_info', message: \
  '[{"text":"你成為了 ","color":"white","bold":false},{"nbt":"CustomName","entity":"@n[tag=this]","interpret":true,"bold":true}]' \
}
tag @s remove this

execute as @p[tag=ftb.this_finder] run function ww:role/_become with storage ftb:temp setRoleInput
execute as @p[tag=ftb.this_finder] run function ww:player/tag/sanitize

setblock ~ ~ ~ air

#execute store result score %buttonsLeft ftb.system if entity @e[tag=ftb.interaction]
scoreboard players remove %buttonsLeft ftb.system 1

# tag sanitization removes this tag
# tag @a[tag=ftb.this_finder] remove ftb.this_finder

kill @e[tag=ftb.entity,distance=..1]
