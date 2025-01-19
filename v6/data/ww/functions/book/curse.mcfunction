function ww:book/init

function ww:book/local/pages
data modify block 0 0 0 Items[0].tag.title set value '詛咒骨針'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"詛咒骨針","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"詛咒骨針","color":"light_purple","bold":true},"\\n\\n",{"text":"選擇一名玩家, 使其玩家增加1層詛咒, 累積3層可使該玩家死亡","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.curse set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}