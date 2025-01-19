function ww:book/init

function ww:book/global/pages
data modify block 0 0 0 Items[0].tag.title set value '選擇戀人攻'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"選擇戀人攻","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.global
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"選擇戀人攻","color":"light_purple","bold":true},"\\n\\n",{"text":"指定一名活玩家成為戀人配對的攻方","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.cupid set value 1b
data modify block 0 0 0 Items[0].tag.pair_a set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}