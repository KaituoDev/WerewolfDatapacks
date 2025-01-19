## INPUT: storage ww:game currentObj.notes [{id, team, day}]
## INPUT: storage ww:game currentObj.count

execute store result score %diaryCount var run data get storage ww:game currentObj.count

execute if score %diaryCount var matches 1.. run function ww:skill/diary/team/next_line