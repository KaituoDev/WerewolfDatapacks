# inputs: {id, name, descriptions, model, stack_size}

# $clear @s *[minecraft:custom_data~{$(id):true}]

$give @s warped_fungus_on_a_stick[ \
  max_stack_size=$(stack_size), \
  item_model='$(model)', \
  item_name='{"bold":true,"color":"aqua","text":"$(name)"}', \
  unbreakable={show_in_tooltip:false},rarity="epic", \
  custom_data={function: "ww:skill/$(id)/run", "ww.skill": true, "$(id)": true}, \
  lore=$(descriptions), \
  attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"entity_interaction_range",amount:-5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false} \
] 1