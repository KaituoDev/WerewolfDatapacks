function ww:book/init

function ww:book/global/pages
data modify block 0 0 0 Items[0].tag.title set value '選警長'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"選警長","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.global
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"選警長","color":"light_purple","bold":true},"\\n\\n",{"text":"選擇一名你心目中的警長, 或是提名自己也可以。 \\n\\n得票者最高為第一任警長，第二高為第二任， 以此類推。 當最高票不只一人時警長必須重選, 第二次選舉再度出現兩人以上的最高票時警長選舉視為失敗， 警徽流失","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.officer set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}