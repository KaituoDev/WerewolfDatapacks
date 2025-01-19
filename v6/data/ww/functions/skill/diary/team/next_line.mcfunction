## INPUT: storage ww:game currentObj.notes [{id, team, day}]

execute store result score %playerID var run data get storage ww:game currentObj.notes[0].id
execute store result score %teamTemp var run data get storage ww:game currentObj.notes[0].team
execute store result score %dayTemp var run data get storage ww:game currentObj.notes[0].day

execute as @a[scores={id=1..}] if score @s id = %playerID var run tag @s add currentTarget

execute if entity @a[tag=currentTarget] run tellraw @s [{"text":"第"},{"score":{"name":"%dayTemp","objective":"var"},"color":"green","bold":true},{"text":"天查出: ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]","color":"yellow","bold":true},{"text":" 屬於第 ","color":"white","bold":false},{"score":{"name":"%teamTemp","objective":"var"},"color":"green","bold":true},{"text":" 組","color":"white","bold":false}]

tag @a remove currentTarget

data remove storage ww:game currentObj.notes[0]

scoreboard players remove %diaryCount var 1
execute if score %diaryCount var matches 1.. run function ww:skill/diary/team/next_line