function ww:book/init

function ww:book/local/pages
data modify block 0 0 0 Items[0].tag.title set value '找尋教徒'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"找尋教徒","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"找尋教徒","color":"light_purple","bold":true},"\\n\\n",{"text":"選擇一名玩家, 若該玩家為抖M教徒, 公布該抖M的玩家名字, 此外自己被殺時會由抖M替死","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.sadist set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}