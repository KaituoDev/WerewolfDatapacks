# context: @s = player

clear @s *[minecraft:custom_data~{holy_set:true}]

scoreboard players add @s ww.immune 400
effect give @s speed 20 3 true

give @s golden_sword[custom_data={holy_sword:true},item_name='{"text":"圣剑 Excalibur","bold":true,"color":"gold"}',lore=['{"text":"一击必杀玩家, 无视无敌"}'],enchantments={levels:{"minecraft:knockback":20},show_in_tooltip:false}]