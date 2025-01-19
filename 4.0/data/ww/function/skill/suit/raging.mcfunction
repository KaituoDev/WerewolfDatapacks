# context: @s = player | villager

scoreboard players operation %temp ww.var = @s ww.kills
data modify storage ww:temp applySpeedInput set value {}
execute store result storage ww:temp applySpeedInput.level int 1 run scoreboard players add %temp ww.var 2

function ww:skill/suit/_apply_speed with storage ww:temp applySpeedInput