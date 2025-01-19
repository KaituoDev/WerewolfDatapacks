# context: @s = player | villager

clear @s *[minecraft:custom_data~{arousal:true}]

scoreboard players add @s ww.forceInvis 600
effect give @s speed 30 0 true

execute if entity @s[tag=ww.fool] run effect give @s glowing 30 0 true