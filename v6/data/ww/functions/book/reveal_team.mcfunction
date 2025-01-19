function ww:book/init

function ww:book/global/pages
data modify block 0 0 0 Items[0].tag.title set value '查驗組別'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"查驗組別","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.global
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"查驗玩家","color":"light_purple","bold":true},"\\n\\n",{"text":"選擇一名玩家並查驗其組別","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.reveal_team set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}