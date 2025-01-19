# context: @s = husk

scoreboard players set @s ww.dummyTimer 60
data merge entity @s {Silent:1b,Invulnerable:1b,DeathLootTable:"",CanPickUpLoot:0b,IsBaby:1b,CanBreakDoors:0b}
effect give @s invisibility infinite 0 true

attribute @s attack_damage base set 0.0
effect give @s weakness infinite 5 true
# attribute @s entity_interaction_range base set -100.0
tag @s add ww.killer_ai