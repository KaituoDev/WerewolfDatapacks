execute as @a[scores={officerVoteCount=1..}] unless score @s officerOrder matches 1.. if score @s officerVoteCount = %current_max_vote officerOrder run tag @s add candidate

execute store result score %candidates var if entity @a[tag=candidate]
tag @p[sort=random,tag=candidate] add currentCandidate

execute store result score @p[tag=currentCandidate] officerOrder run scoreboard players add %current officerOrder 1
scoreboard players operation %max officerOrder = %current officerOrder

# it's possible currentCandidate doesn't exist
# since it's looping from max votes down to 1, stepping down 1 per iteration
execute if entity @a[tag=currentCandidate] run tellraw @a ["\n",{"text":"第","color":"white","bold":false},{"score":{"name":"%current","objective":"officerOrder"},"color":"green","bold":true},{"text":"任警長: ","color":"white","bold":false},{"selector":"@p[tag=currentCandidate]","bold":true,"color":"white"}]

tag @a remove candidate
tag @a remove currentCandidate

# don't reduce by 1 if there are more players with %current_max_vote score (calculated on line 3)
execute unless score %candidates var matches 2.. run scoreboard players remove %current_max_vote officerOrder 1
execute if score %current_max_vote officerOrder matches 1.. if entity @a[scores={officerOrder=0}] run function ww:session/officer/end/__finalize