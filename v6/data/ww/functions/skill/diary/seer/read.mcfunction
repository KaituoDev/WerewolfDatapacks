execute store result score %diaryCount var run data get storage ww:game diary.seer.count
data modify storage ww:game temp set from storage ww:game diary.seer.notes

execute if score %diaryCount var matches 1.. run function ww:skill/diary/seer/next_line