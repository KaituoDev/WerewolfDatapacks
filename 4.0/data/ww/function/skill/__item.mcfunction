# inputs: {id, name, descriptions}

$clear @s *[minecraft:custom_data~{$(id):true}]

$give @s warped_fungus_on_a_stick[ \
  item_name='{"bold":true,"color":"aqua","text":"$(name)"}', \
  unbreakable={show_in_tooltip:false},rarity="epic", \
  custom_data={function: "ww:skill/$(id)/run", "ww.skill": true, "$(id)": true}, \
  lore=$(descriptions), \
  attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"entity_interaction_range",amount:-5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false} \
] 1