function ww:book/init

function ww:book/local/pages
data modify block 0 0 0 Items[0].tag.title set value '狼人目標投票'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"狼人目標投票","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"狼人目標投票","color":"light_purple","bold":true},"\\n\\n",{"text":"選擇想要殺的目標玩家， 狼人投票總結後最高票的玩家為狼群的最終目標, 平票則投票失敗","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.wolf set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}