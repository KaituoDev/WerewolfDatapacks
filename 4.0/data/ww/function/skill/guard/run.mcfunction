# context: @s = player | villager

clear @s *[minecraft:custom_data~{guard:true}]

execute at @s run function ww:skill/guard/effects