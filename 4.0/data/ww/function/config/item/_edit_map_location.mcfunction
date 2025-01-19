# context: @s = player
# inputs: {index}

clear @s warped_fungus_on_a_stick[minecraft:custom_data~{ww.edit_map_location:true}]
execute if predicate ww:is_our_map run return run function ww:chat/_dm {type:'error',message:'这张地图不能改地点'}

$give @s minecraft:warped_fungus_on_a_stick[ \
  minecraft:custom_data={ww.edit_map_location:true, ww.map_index:$(index), function: 'ww:config/board/action/map/edit/location'}, \
  minecraft:item_name='{"text":"变更地图地点","color":"aqua"}' \
]