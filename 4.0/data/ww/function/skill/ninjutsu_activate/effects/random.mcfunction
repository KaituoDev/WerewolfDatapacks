# context: @s = player | villager

data modify storage ww:temp randInput set value {min: 0, max: 4}

data modify storage ww:temp randomScrollInput set value {}
execute store result storage ww:temp randomScrollInput.index int 1 run function ww:utils/_rand with storage ww:temp randInput
function ww:skill/ninjutsu_activate/effects/_random with storage ww:temp randomScrollInput