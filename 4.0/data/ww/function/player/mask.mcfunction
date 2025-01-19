# context: @s = player

function ww:skill/hijack/equip

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},custom_data={mask:true},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=true,attribute_modifiers={modifiers:[ \
  {id:"knockback_resistance",type:"knockback_resistance",amount:0,operation:"add_multiplied_base",slot:"chest"}, \
  {id:"armor_toughness",type:"knockback_resistance",amount:0,operation:"add_multiplied_base",slot:"chest"} \ 
],show_in_tooltip:false},trim={material:"minecraft:gold",pattern:"minecraft:shaper",show_in_tooltip:false}] 1

item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:false},custom_data={mask:true},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=true,attribute_modifiers={modifiers:[ \
  {id:"knockback_resistance",type:"knockback_resistance",amount:0,operation:"add_multiplied_base",slot:"legs"}, \
  {id:"armor_toughness",type:"armor_toughness",amount:0,operation:"add_multiplied_base",slot:"legs"} \
],show_in_tooltip:false},trim={material:"minecraft:gold",pattern:"minecraft:shaper",show_in_tooltip:false}] 1

item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:false},custom_data={mask:true},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=true,attribute_modifiers={modifiers:[ \
  {id:"knockback_resistance",type:"knockback_resistance",amount:0,operation:"add_multiplied_base",slot:"feet"}, \
  {id:"armor_toughness",type:"armor_toughness",amount:0,operation:"add_multiplied_base",slot:"feet"} \
],show_in_tooltip:false},trim={material:"minecraft:gold",pattern:"minecraft:shaper",show_in_tooltip:false}] 1

function ww:chat/_dm {type: 'info', message: '场上有百变狼, 你获得百变幻象状态'}