# context: @s = player
# output: ww:output lookingAt (UUID)

data remove storage ww:output lookingAt

scoreboard players set %ray ww.var 400

tag @s add this
execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^ run function ww:player/looking_at/non_stop_loop
tag @s remove this