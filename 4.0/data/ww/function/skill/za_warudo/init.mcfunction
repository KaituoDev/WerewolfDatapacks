# context: @s = player | villager | other entity

scoreboard players add @s ww.za_warudo 200

tag @s add this_za_warudo_spawner
execute summon marker run function ww:skill/za_warudo/setup
tag @s remove this_za_warudo_spawner