function ww:book/init

function ww:book/local/pages
data modify block 0 0 0 Items[0].tag.title set value '決鬥'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"決鬥","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"決鬥","color":"light_purple","bold":true},"\\n\\n",{"text":"選擇一名玩家\\n若該玩家並非狼人陣營: \\n你將死亡\\n若該玩家為狼人陣營: 該玩家將死亡","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.knight set value 1b
data modify block 0 0 0 Items[0].tag.duel set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}