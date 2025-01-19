tag @s add this
execute as @a[scores={id=1..}] if score @s id = @p[tag=this] voteTrigger run tag @s add currentTarget

# copy @p[tag=this] object to currentObj from diary.team, the rest gets sent back to diary.team
# modify the object
# append the object back to diary.team
# structure: {id: #, notes: [{id: #, team: #, day: #}, ...], count: #}
# structure: {diary:{ team: [] }}

# step 1: retrive the obj from the diary.team array
function ww:vote/reveal_team/find_obj

# step 2: modify the obj
data modify storage ww:game temp set value {id: -1, team: 0, day: 0}
execute store result storage ww:game temp.id int 1 run scoreboard players get @p[tag=currentTarget] id
execute store result storage ww:game temp.team int 1 run scoreboard players get @p[tag=currentTarget] team
execute store result storage ww:game temp.day int 1 run scoreboard players get %day system

# step 2.5: append notes and update count to currentObj
data modify storage ww:game currentObj.notes append from storage ww:game temp
execute store result score %notesCount var run data get storage ww:game currentObj.count
scoreboard players add %notesCount var 1
execute store result storage ww:game currentObj.count int 1 run scoreboard players get %notesCount var

# step 3: append the modified obj back to the array
data modify storage ww:game diary.team append from storage ww:game currentObj

tag @s remove this
tag @a remove currentTarget

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"已更新組員查詢紀錄","color":"green","bold":true}]