# context: @s = player | villager

scoreboard players add @s ww.ninjaTree 160
scoreboard players add @s[tag=!ww.fool] ww.immune 160

# item replace entity @s weapon.mainhand with stick[custom_data={ninja_stick:true},item_name='{"bold":true,"color":"#3D251E","italic":false,"text":"岩棍"}',unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:knockback":20},show_in_tooltip:false}] 1

execute as @a run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"忍者發動了 ","color":"white","bold":false},{"text":"岩遁","color":"green","bold":true}]' \
}