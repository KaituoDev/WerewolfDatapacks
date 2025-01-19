function ww:vote/wolf/count

scoreboard players set %max wolfVoteCount 0
execute as @a[scores={wolfVoteCount=1..}] run scoreboard players operation %max wolfVoteCount > @s wolfVoteCount

scoreboard players set %tied wolfVoteCount 0
execute as @a[scores={wolfVoteCount=1..}] if score @s wolfVoteCount = %max wolfVoteCount run scoreboard players add %tied wolfVoteCount 1

execute if entity @a[tag=wolf,tag=sirenTarget,tag=alive] run scoreboard players set %tied wolfVoteCount -1
execute if entity @a[tag=wolf,tag=sirenTarget,tag=alive] run tag @a[tag=wolf] remove sirenTarget

execute if score %bads_massacre system matches 0 if score %tied wolfVoteCount matches 2.. run function ww:vote/wolf/tied
execute if score %bads_massacre system matches 0 if score %tied wolfVoteCount matches 1 as @a[scores={wolfVoteCount=1..}] if score @s wolfVoteCount = %max wolfVoteCount run function ww:vote/wolf/success
execute if score %bads_massacre system matches 1 as @a[scores={wolfVoteCount=1..}] run function ww:vote/wolf/success

execute if score %tied wolfVoteCount matches 0 run function ww:vote/wolf/failed
execute if score %tied wolfVoteCount matches -1 run function ww:role/siren/interrupt