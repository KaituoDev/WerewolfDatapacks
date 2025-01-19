# context: @s = villager
# location: at @s

scoreboard players set @s ww.ai.ninjutsu_used 1

execute store result score %choice ww.var run function ww:utils/_rand {min: 0, max: 2}

execute if score %choice ww.var matches 0 run return run function ww:skill/ninjutsu_activate/effects/tree
execute if score %choice ww.var matches 1 run return run function ww:skill/ninjutsu_activate/effects/crowd
execute if score %choice ww.var matches 2 run return run function ww:skill/ninjutsu_activate/effects/smoke