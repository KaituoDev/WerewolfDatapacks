# context: @s = player
clear @s *[minecraft:custom_data~{fast_forward:true}]

give @s warped_fungus_on_a_stick[item_model="clock",item_name='{"bold":true,"color":"aqua","text":"快进时间"}',unbreakable={},rarity="epic",custom_data={function: "ww:time/fast_forward", fast_forward: true},attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"entity_interaction_range",amount:-5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1