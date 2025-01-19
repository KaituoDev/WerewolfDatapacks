data modify block 0 0 0 Items[0].tag.title set value '毒藥'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"毒藥","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"毒藥","color":"light_purple","bold":true},"\\n\\n",{"text":"選擇一名玩家 (不得為自己), 可使該玩家在隔日死亡","color":"black"}]'