# context: @s = player
# inputs: {index}

clear @s writable_book[minecraft:custom_data~{ww.edit_map_name:true}]
execute if predicate ww:is_our_map run return run function ww:chat/_dm {type:'error',message:'這張地圖不能改名'}

$give @s minecraft:writable_book[ \
  minecraft:max_stack_size=99, \
  minecraft:custom_data={ww.edit_map_name:true, ww.map_index:$(index)}, \
  minecraft:item_name='{"text":"變更地圖名","color":"aqua"}' \
]

function ww:chat/_dm {type: 'info', message: '請在書中輸入新名字, 寫完按完成即可, 不用署名'}