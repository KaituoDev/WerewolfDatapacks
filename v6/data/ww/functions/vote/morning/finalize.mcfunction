scoreboard players set %finalizing var 1
scoreboard players set %total_votes var 0
scoreboard players set %invalid_votes var 0
function ww:vote/morning/count
scoreboard players set %finalizing var 0

execute if score %invalid_votes var matches 1.. run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"本次投票中有 ","color":"white","bold":false},{"score":{"name":"%invalid_votes","objective":"var"},"color":"green","bold":true},{"text":" 張無效票","color":"white","bold":false}]

scoreboard players set %max morningVoteCount 0
execute as @a[scores={morningVoteCount=1..}] run scoreboard players operation %max morningVoteCount > @s morningVoteCount

scoreboard players set %tied morningVoteCount 0
execute as @a[scores={morningVoteCount=1..},tag=alive] if score @s morningVoteCount = %max morningVoteCount run tag @s add currentMorningMax
execute store result score %tied morningVoteCount if entity @a[tag=currentMorningMax]

execute if score %tied morningVoteCount matches 2.. run function ww:vote/morning/tied
execute if score %tied morningVoteCount matches 1 as @p[tag=currentMorningMax] run function ww:vote/morning/execute

tag @a remove currentMorningMax

# since white wolf would cancel the votes, this wouldn't be necessary
# execute if score %tied morningVoteCount matches 0 run function ww:vote/morning/failed