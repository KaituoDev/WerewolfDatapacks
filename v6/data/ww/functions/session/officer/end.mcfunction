clear @a written_book{officer:1b,vote:1b}

bossbar set minecraft:officer_vote visible false
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

schedule clear ww:session/officer/main_1s

execute unless score %started system matches 1 run function ww:game/init/unpause