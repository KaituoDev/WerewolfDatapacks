# context: @s = player
# inputs: {index}

clear @s warped_fungus_on_a_stick[minecraft:custom_data~{ww.edit_map_location:true}]
execute if predicate ww:is_our_map run return run function ww:chat/_dm {type:'error',message:'這張地圖不能改地點'}

$give @s minecraft:warped_fungus_on_a_stick[ \
  minecraft:custom_data={ww.edit_map_location:true, ww.map_index:$(index), function: 'ww:config/board/action/map/edit/location'}, \
  minecraft:item_name='{"text":"變更地圖地點","color":"aqua"}' \
]