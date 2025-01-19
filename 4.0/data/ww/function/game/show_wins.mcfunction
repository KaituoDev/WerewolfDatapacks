# context: server

execute if function ww:config/flag/show_wins run return run function ww:game/show_wins_scoreboard

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list