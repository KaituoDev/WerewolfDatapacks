clear @a
effect clear @a
function ww:reset/values/night

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

execute if score %day system matches 2.. run function ww:vote/morning/finalize

# after finalize, the could potentially end due to masochist ending

execute if predicate ww:started run function ww:time/__night