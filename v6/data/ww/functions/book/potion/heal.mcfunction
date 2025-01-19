data modify block 0 0 0 Items[0].tag.title set value '解藥'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"解藥","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"解藥","color":"light_purple","bold":true},"\\n\\n",{"text":"選擇一名玩家 (不得為自己), 可使該玩家在當晚免於一死, 並清除該玩家的詛咒層數","color":"black"}]'