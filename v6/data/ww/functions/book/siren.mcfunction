function ww:book/init

function ww:book/local/pages
data modify block 0 0 0 Items[0].tag.title set value '唱歌'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"唱歌","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"唱歌","color":"light_purple","bold":true},"\\n\\n",{"text":"選擇一名玩家, 若該玩家為狼人陣營, 可強制使狼人陣營當晚無行動 (狼人投票照常進行, 但結果永遠是投票失敗)\\n然而人魚本身並不會知道選中的對象是否為狼人","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.siren set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}