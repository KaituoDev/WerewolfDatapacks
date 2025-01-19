function ww:book/init

function ww:book/local/pages
data modify block 0 0 0 Items[0].tag.title set value '獵槍'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"獵槍","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"獵槍","color":"light_purple","bold":true},"\\n\\n",{"text":"選擇一名玩家, 不得為自己, 使其在你死前跟你一起陪葬","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.hunter set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}