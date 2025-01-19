execute as @a[scores={team=1..}] if score @s team = %currentTeam var run tag @s add currentTarget

# data modify storage ww:game history.data set value '[{"text":"第 "},{"score":{"name":"%currentTeam","objective":"var"},"color":"green","bold":true},{"text":" 組: ","color":"white","bold":false},{"selector":"@a[tag=currentTarget]","color":"white","bold":true}]'

execute if entity @a[tag=currentTarget] run tellraw @a [{"text":"第 "},{"score":{"name":"%currentTeam","objective":"var"},"color":"green","bold":true},{"text":" 組: ","color":"white","bold":false},{"selector":"@a[tag=currentTarget]","color":"white","bold":true}]
# execute if entity @a[tag=currentTarget] run function ww:history/record

tag @a remove currentTarget
scoreboard players add %currentTeam var 1
execute if score %currentTeam var <= %current id run function ww:skill/reveal/all/__teaming