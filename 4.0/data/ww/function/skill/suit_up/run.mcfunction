# context: @s = player

execute if score @s ww.suitCD matches 1.. run return run function ww:chat/_dm {type: 'warn', message: '技能还在冷却'}

scoreboard players set @s ww.suitCD 200
execute if entity @s[tag=ww.fool] run scoreboard players set @s ww.suitCD 400

attribute @s movement_speed base set 0.1
attribute @s[type=villager] movement_speed base set 0.5

clear @s *[minecraft:custom_data~{suit_up:true}]
function ww:skill/_item_with_custom_model_data {id: 'suit_off', custom_model_data: 23328}

item replace entity @s armor.head with netherite_helmet[unbreakable={show_in_tooltip:false},custom_data={suit_up:true},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=true,attribute_modifiers={modifiers:[ \
  {id:"knockback_resistance",type:"knockback_resistance",amount:0,operation:"add_multiplied_base",slot:"head"}, \
  {id:"armor_toughness",type:"armor_toughness",amount:0,operation:"add_multiplied_base",slot:"head"} \
],show_in_tooltip:false},trim={material:"minecraft:gold",pattern:"minecraft:shaper",show_in_tooltip:false}] 1

item replace entity @s armor.chest with netherite_chestplate[unbreakable={show_in_tooltip:false},custom_data={suit_up:true},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=true,attribute_modifiers={modifiers:[ \
  {id:"knockback_resistance",type:"knockback_resistance",amount:0,operation:"add_multiplied_base",slot:"chest"}, \
  {id:"armor_toughness",type:"knockback_resistance",amount:0,operation:"add_multiplied_base",slot:"chest"}, \ 
  {id:"movement_speed",type:"movement_speed",amount:0.005,operation:"add_value",slot:"chest"}, \ 
],show_in_tooltip:false},trim={material:"minecraft:gold",pattern:"minecraft:shaper",show_in_tooltip:false}] 1

item replace entity @s armor.legs with netherite_leggings[unbreakable={show_in_tooltip:false},custom_data={suit_up:true},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=true,attribute_modifiers={modifiers:[ \
  {id:"knockback_resistance",type:"knockback_resistance",amount:0,operation:"add_multiplied_base",slot:"legs"}, \
  {id:"armor_toughness",type:"armor_toughness",amount:0,operation:"add_multiplied_base",slot:"legs"} \
],show_in_tooltip:false},trim={material:"minecraft:gold",pattern:"minecraft:shaper",show_in_tooltip:false}] 1

item replace entity @s armor.feet with netherite_boots[unbreakable={show_in_tooltip:false},custom_data={suit_up:true},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=true,attribute_modifiers={modifiers:[ \
  {id:"knockback_resistance",type:"knockback_resistance",amount:0,operation:"add_multiplied_base",slot:"feet"}, \
  {id:"armor_toughness",type:"armor_toughness",amount:0,operation:"add_multiplied_base",slot:"feet"} \
],show_in_tooltip:false},trim={material:"minecraft:gold",pattern:"minecraft:shaper",show_in_tooltip:false}] 1
