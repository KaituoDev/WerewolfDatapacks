function ww:book/init

function ww:book/local/pages
data modify block 0 0 0 Items[0].tag.title set value '守護'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"守護","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"守護","color":"light_purple","bold":true},"\\n\\n",{"text":"指定一名玩家並使其躲避當晚的所有主動殺機\\n(例: 狼人殺, 女巫毒, 不含獵人槍, 忍者代罪等)\\n不得連續兩晚選同一人","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.guardian set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}