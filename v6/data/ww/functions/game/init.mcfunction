clear @a
effect clear @a
xp set @a 0 points
xp set @a 0 levels

function ww:reset/entities

scoreboard players reset * god
scoreboard players reset * readHistory
execute store result score %gametime system run time query gametime

execute as @a run function ww:reset/tags
function ww:reset/values

scoreboard players set %idle system 0

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

tag @a[predicate=!ww:god] add alive
gamemode adventure @a[predicate=!ww:god]
gamemode spectator @a[predicate=ww:god]

execute as @a[tag=alive,sort=random] run function ww:player/id/global
execute as @a[tag=alive,sort=random] run function ww:player/id/local

function ww:reset/values/teaming

execute as @a run function ww:game/teleport

team join player @a

setblock -32 56 89 redstone_block

execute if score %find_buttons system matches 1 run function fd:button/init
execute unless score %find_buttons system matches 1 run function ww:game/init/role_assign