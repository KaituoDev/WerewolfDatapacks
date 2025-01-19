scoreboard players remove %diaryCount var 1
execute store result score %playerID var run data get storage ww:game temp[0].id
execute store result score %campaign var run data get storage ww:game temp[0].campaign
execute store result score %dayTemp var run data get storage ww:game temp[0].day

execute as @a[scores={id=1..}] if score @s id = %playerID var run tag @s add currentTarget

data modify storage ww:game DISPLAY.temp set value '{"text":""}'
execute if entity @a[tag=currentTarget,tag=!alive] run data modify storage ww:game DISPLAY.temp set value '{"text":" (已死亡)","color":"light_gray","italic":true}' 

execute if entity @a[tag=currentTarget] if score %campaign var matches 0 run tellraw @s [{"text":"第"},{"score":{"name":"%dayTemp","objective":"var"},"color":"green","bold":true},{"text":"天查出: ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]"},{"storage":"ww:game","nbt":"DISPLAY.temp","interpret":true},{"text":" 是好人陣營","color":"yellow","bold":true,"italic":false}]

execute if entity @a[tag=currentTarget] if score %campaign var matches 1 run tellraw @s [{"text":"第"},{"score":{"name":"%dayTemp","objective":"var"},"color":"green","bold":true},{"text":"天查出: ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]"},{"storage":"ww:game","nbt":"DISPLAY.temp","interpret":true},{"text":" 是狼人陣營","color":"red","bold":true,"italic":false}]

execute if entity @a[tag=currentTarget] if score %campaign var matches 2 run tellraw @s [{"text":"第"},{"score":{"name":"%dayTemp","objective":"var"},"color":"green","bold":true},{"text":"天查出: ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]"},{"storage":"ww:game","nbt":"DISPLAY.temp","interpret":true},{"text":" 是怨靈陣營","color":"dark_red","bold":true,"italic":false}]

# execute if entity @a[tag=currentTarget] if score %campaign var matches 3 run tellraw @s [{"text":"第"},{"score":{"name":"%dayTemp","objective":"var"},"color":"green","bold":true},{"text":"天查出: ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]"},{"storage":"ww:game","nbt":"DISPLAY.temp","interpret":true},{"text":" 是戀人陣營","color":"#ffc0cb","bold":true,"italic":false}]

tag @a remove currentTarget

data remove storage ww:game temp[0]

execute if score %diaryCount var matches 1.. run function ww:skill/diary/seer/next_line