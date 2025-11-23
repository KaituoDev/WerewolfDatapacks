# context: @s = player | villager

clear @s *[minecraft:custom_data~{size_reduce:true}]

function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你发动了 ","color":"white","bold":false},{"text":"缩小","color":"green","bold":true}]' \
}

scoreboard players add @s ww.nilsSizeReduce 300
execute if entity @s[tag=ww.fool] run attribute @s scale base set 6
effect give @s invisibility 20 0 true

item replace entity @s armor.head with leather_helmet[trim={pattern:rib,material:gold}, \
  dyed_color={rgb:13583672},enchantment_glint_override=false,enchantments={levels:{binding_curse:1}}, \
  attribute_modifiers={modifiers:[{type:"scale",amount:-0.8,slot:head,operation:add_multiplied_total,id:1760794255773}]}, \
  unbreakable={},custom_data={nils_suit:true}] 1

item replace entity @s armor.chest with leather_chestplate[trim={pattern:silence,material:quartz}, \
  dyed_color={rgb:15262404},enchantment_glint_override=false,enchantments={levels:{binding_curse:1}}, \
  unbreakable={},custom_data={nils_suit: true}] 1

item replace entity @s armor.legs with leather_leggings[trim={pattern:rib,material:iron}, \
  dyed_color={rgb:10910303},enchantment_glint_override=false,enchantments={levels:{binding_curse:1}}, \
  unbreakable={},custom_data={nils_suit: true}] 1

item replace entity @s armor.feet with netherite_boots[trim={pattern:silence,material:copper}, \
  enchantment_glint_override=false,enchantments={levels:{binding_curse:1}}, \
  attribute_modifiers={modifiers:[{type:movement_speed,amount:0.2,slot:feet,operation:add_multiplied_total,id:1760794255773}]}, \
  unbreakable={},custom_data={nils_suit:true}] 1