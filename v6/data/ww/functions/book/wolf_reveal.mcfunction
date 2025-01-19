function ww:book/init

data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"狼人名單","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set value ['{"selector":"@a[scores={onWolfList=1..},sort=random]"}']
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"狼人名單","color":"light_purple","bold":true},"\\n\\n",{"text":"請翻下一頁","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.wolf_reveal set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}