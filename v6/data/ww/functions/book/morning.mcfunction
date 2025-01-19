function ww:book/init

function ww:book/local/pages
data modify block 0 0 0 Items[0].tag.title set value '白天投票'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"白天投票","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"白天投票","color":"light_purple","bold":true},"\\n\\n",{"text":"可以無限次改選其他玩家， 以及反悔投票 (取消自己先前的選擇), 然而平票視為投票失敗","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.morning set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}