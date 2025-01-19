# context: @s = player
# inputs: {pages: array of stringified text components, title, id}

$give @s written_book[ \
  minecraft:custom_data={"ww.book":"$(id)"}, \
  item_name='$(title)', \
  written_book_content={title:"",author:"",pages:$(pages)}, \
  attribute_modifiers={modifiers:[{id:"block_interaction_range",type:"block_interaction_range",amount:-6,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false} \
] 1