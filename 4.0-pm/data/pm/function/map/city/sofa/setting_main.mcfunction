execute at @e[type=bat,nbt={CustomName:'{"bold":true,"italic":false,"color":"light_purple","text":"红沙发 [东]"}'}] align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["sofa","red","east"]}
execute at @e[type=bat,nbt={CustomName:'{"bold":true,"italic":false,"color":"light_purple","text":"红沙发 [西]"}'}] align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["sofa","red","west"]}
execute at @e[type=bat,nbt={CustomName:'{"bold":true,"italic":false,"color":"light_purple","text":"红沙发 [南]"}'}] align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["sofa","red","south"]}
execute at @e[type=bat,nbt={CustomName:'{"bold":true,"italic":false,"color":"light_purple","text":"红沙发 [北]"}'}] align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["sofa","red","north"]}

execute at @e[type=bat,nbt={CustomName:'{"bold":true,"italic":false,"color":"light_purple","text":"橘沙发 [东]"}'}] align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["sofa","orange","east"]}
execute at @e[type=bat,nbt={CustomName:'{"bold":true,"italic":false,"color":"light_purple","text":"橘沙发 [西]"}'}] align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["sofa","orange","west"]}
execute at @e[type=bat,nbt={CustomName:'{"bold":true,"italic":false,"color":"light_purple","text":"橘沙发 [南]"}'}] align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["sofa","orange","south"]}
execute at @e[type=bat,nbt={CustomName:'{"bold":true,"italic":false,"color":"light_purple","text":"橘沙发 [北]"}'}] align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["sofa","orange","north"]}

execute at @e[type=bat,nbt={CustomName:'{"bold":true,"italic":false,"color":"red","text":"[清除沙发]"}'}] at @e[type=marker,tag=sofa,distance=..2] run setblock ~ ~ ~ air
execute at @e[type=bat,nbt={CustomName:'{"bold":true,"italic":false,"color":"red","text":"[清除沙发]"}'}] run kill @e[type=marker,tag=sofa,distance=..2]

kill @e[type=bat]