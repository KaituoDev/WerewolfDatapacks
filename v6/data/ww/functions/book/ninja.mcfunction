clear @s warped_fungus_on_a_stick{ninja_scapegoat:1b}
function ww:book/init

function ww:book/local/pages
data modify block 0 0 0 Items[0].tag.title set value '忍法 - 代罪'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"忍法 - 代罪","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.local
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"忍法 - 代罪","color":"light_purple","bold":true},"\\n\\n",{"text":"選擇一名玩家\\n若該玩家並非狼人陣營: \\n當你將被殺時, 該玩家將代替你死 (該玩家為怨靈時雙方都能存活)\\n若該玩家為狼人陣營: 你會直接被咬死, 無論是否被其他玩家追殺\\n\\n隔晚須重選代罪對象","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.ninja set value 1b
data modify block 0 0 0 Items[0].tag.ninja_scapegoat set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}