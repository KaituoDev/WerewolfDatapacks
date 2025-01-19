## This assumes localId is set

execute as @a[tag=wolf,tag=alive] run function ww:book/wolf

bossbar set minecraft:wolf_vote players @a[tag=wolf]
bossbar set minecraft:wolf_vote visible true
execute store result bossbar minecraft:wolf_vote max run scoreboard players operation %wolf_vote var = %WOLF_SESSION constant
execute store result bossbar minecraft:wolf_vote value run scoreboard players get %wolf_vote var

bossbar set minecraft:skip_item players @a[tag=!wolf]
bossbar set minecraft:skip_item visible true
execute store result bossbar minecraft:skip_item max run scoreboard players get %wolf_vote var
execute store result bossbar minecraft:skip_item value run scoreboard players get %wolf_vote var

function ww:session/wolf/main_1s