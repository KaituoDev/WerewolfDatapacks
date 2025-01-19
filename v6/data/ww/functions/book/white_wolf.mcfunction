function ww:book/init

function ww:book/local/pages
data modify block 0 0 0 Items[0].tag.title set value '自爆彈'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"自爆彈","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"自爆彈","color":"light_purple","bold":true},"\\n\\n",{"text":"點選一名玩家， 使其與自己一起死亡， 並直接進入夜晚","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.white_wolf set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}