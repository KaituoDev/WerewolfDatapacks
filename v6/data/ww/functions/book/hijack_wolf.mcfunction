function ww:book/init

function ww:book/local/pages
data modify block 0 0 0 Items[0].tag.title set value '冒充玩家'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"冒充玩家","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"冒充玩家","color":"light_purple","bold":true},"\\n\\n",{"text":"當預言家查到自己時, 預言家日記裡的紀錄會顯示點選的玩家的ID而非你的玩家ID, 每晚都可以改變","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.hijack_wolf set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}