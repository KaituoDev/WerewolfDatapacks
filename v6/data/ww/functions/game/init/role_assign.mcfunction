function ww:role/assign

scoreboard players enable @a[predicate=!ww:god] voteTrigger
scoreboard players enable @a[predicate=!ww:god] localVoteTrigger

execute if score %officer_enabled system matches 1 run function ww:session/officer/init
execute unless score %officer_enabled system matches 1 run function ww:game/init/unpause

function ww:game/main_1s