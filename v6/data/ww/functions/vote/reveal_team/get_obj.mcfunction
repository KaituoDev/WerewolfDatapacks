## CONTEXT: @p[tag=this] id, %objCount var

execute store result score %currentObjId var run data get storage ww:game diary.team[0].id
execute if score @p[tag=this] id = %currentObjId var run data modify storage ww:game currentObj set from storage ww:game diary.team[0]

execute unless score @p[tag=this] id = %currentObjId var run data modify storage ww:game tempArray append from storage ww:game diary.team[0]
data remove storage ww:game diary.team[0]

scoreboard players remove %objCount var 1
execute if score %objCount var matches 1.. run function ww:vote/reveal_team/get_obj