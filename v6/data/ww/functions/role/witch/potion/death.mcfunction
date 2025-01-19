## CONTEXT: @s,@p[tag=this] = the witch looking at a player, @p[tag=correctStare] = target player

execute as @p[tag=correctStare] run function ww:player/death/witch
clear @s warped_fungus_on_a_stick{witch:1b}
playsound minecraft:entity.experience_orb.pickup master @s

scoreboard players remove @s deathPotion 1