data modify storage ww:game temp set value {id: -1, notes: [], count: 0}
execute store result storage ww:game temp.id int 1 run scoreboard players get %currentId var
data modify storage ww:game diary.team append from storage ww:game temp

scoreboard players add %currentId var 1
execute if score %currentId var <= %current id run function ww:reset/values/__teaming