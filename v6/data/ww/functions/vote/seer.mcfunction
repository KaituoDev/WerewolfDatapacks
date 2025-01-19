tag @s add this
execute as @a[scores={id=1..}] if score @s id = @p[tag=this] voteTrigger run tag @s add currentTarget
tag @s remove this

# campaign: 0 = human, 1 = wolf, 2 = wraith

data modify storage ww:game temp set value {id: -1, campaign: 0, day: 0}
execute store result storage ww:game temp.id int 1 run scoreboard players get @s voteTrigger

# hijack wolf passive (non-fool)
execute if entity @a[tag=currentTarget,tag=hijack,tag=wolf,scores={hijack=1..},tag=!fool] store result storage ww:game temp.id int 1 run scoreboard players get @p[tag=currentTarget] hijack

execute if entity @a[tag=currentTarget,tag=goods] run data modify storage ww:game temp.campaign set value 0
execute if entity @a[tag=currentTarget,tag=bads] run data modify storage ww:game temp.campaign set value 1
execute if entity @a[tag=currentTarget,tag=wraiths] run data modify storage ww:game temp.campaign set value 2
# execute if entity @a[tag=currentTarget,tag=lovers] run data modify storage ww:game temp.campaign set value 3

# fool case
execute if entity @s[tag=fool] if entity @a[tag=currentTarget,tag=bads] run data modify storage ww:game temp.campaign set value 0
execute if entity @s[tag=fool] if entity @a[tag=currentTarget,tag=goods] run data modify storage ww:game temp.campaign set value 1

# snow wolf passive
execute if entity @a[tag=currentTarget,tag=bads,tag=snow,tag=wolf,tag=!fool] run data modify storage ww:game temp.campaign set value 0

# wraith case
execute if entity @a[tag=currentTarget,tag=wraiths,tag=!alive] if score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"","color":"white","bold":false},{"selector":"@p[tag=currentTarget,tag=wraiths,tag=!alive]","bold":true},{"text":" 再度被預言家查驗到, 又升天了, 表示心很累","bold":false}]

execute if entity @a[tag=currentTarget,tag=wraiths,tag=bewitcher,tag=!fool,tag=alive] run function ww:role/seer/bewitched
execute if predicate ww:mode/riot as @a[tag=currentTarget,tag=wraiths,tag=alive] run function ww:player/death/wraith
execute if predicate ww:mode/debate run tag @a[tag=currentTarget,tag=wraiths,tag=alive] add dying
execute if predicate ww:mode/debate run tag @a[tag=currentTarget,tag=wraiths,tag=alive] add seerTarget


execute store result storage ww:game temp.day int 1 run scoreboard players get %day system
data modify storage ww:game diary.seer.notes append from storage ww:game temp

tag @a remove currentTarget

execute store result score %notesCount var run data get storage ww:game diary.seer.count
scoreboard players add %notesCount var 1
execute store result storage ww:game diary.seer.count int 1 run scoreboard players get %notesCount var

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"已更新預言家日記","color":"green","bold":true}]