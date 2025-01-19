# context: @s = player who was voted out

# this score is in seconds
execute if entity @s[tag=ww.fool] run return run scoreboard players add %foolSantaRage ww.system 15

return run scoreboard players add %santaRage ww.system 10