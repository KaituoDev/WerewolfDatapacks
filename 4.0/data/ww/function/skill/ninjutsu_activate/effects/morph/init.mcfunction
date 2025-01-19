# context: @s = player

# 1. create morph entity
tag @s add this
execute summon cat run function ww:skill/ninjutsu_activate/effects/morph/setup
tag @s remove this

# 2. change mode
gamemode spectator @s

# 3. add tag
tag @s add ww.morphed
scoreboard players set @s ww.morphing 200 
scoreboard players add @s ww.forceInvis 300

# morph/main will take care of spectating