clear @a
effect clear @a
kill @e[type=item]
team leave @a
gamerule fallDamage false
setblock -34 56 89 redstone_block

function fd:button/end

function ww:reset/entities

function ww:skill/reveal/all

execute as @a run function ww:reset/tags
function ww:reset/values
function ww:reset/schedules

gamemode adventure @a
time set noon

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

execute if score %show_wins system matches 1 run scoreboard objectives setdisplay sidebar wins
execute if score %show_wins system matches 1 run scoreboard objectives setdisplay list wins

tp @a @e[type=marker,tag=lobby,limit=1]
execute at @e[type=marker,tag=lobby,limit=1] run spawnpoint @a ~ ~ ~