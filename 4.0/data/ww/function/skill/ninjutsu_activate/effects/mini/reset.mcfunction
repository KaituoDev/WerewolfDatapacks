# context: @s = player | villager

scoreboard players reset @s ww.ninjaTransform
attribute @s scale base set 1
attribute @s movement_speed base set 0.1
attribute @s[type=villager] movement_speed base set 0.5