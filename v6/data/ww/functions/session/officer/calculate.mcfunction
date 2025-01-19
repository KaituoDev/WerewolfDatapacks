## if there are two players with %max var votes, restart session

schedule clear ww:session/officer/main_1s
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

scoreboard players reset * voteTrigger
scoreboard players enable @a voteTrigger
function ww:session/officer/count

scoreboard players remove %officer_retry var 1

scoreboard players set %max officerVoteCount 0
execute as @a[scores={officerVoteCount=1..}] run scoreboard players operation %max officerVoteCount > @s officerVoteCount

scoreboard players set %tied officerVoteCount 0
execute as @a[scores={officerVoteCount=1..}] if score @s officerVoteCount = %max officerVoteCount run scoreboard players add %tied officerVoteCount 1

execute if score %tied officerVoteCount matches 2.. run function ww:session/officer/tied
execute if score %tied officerVoteCount matches 2.. if score %officer_retry var matches 1.. run function ww:session/officer/end/retry
execute if score %tied officerVoteCount matches 2.. if score %officer_retry var matches ..0 run function ww:session/officer/end/retry_failed

execute if score %tied officerVoteCount matches 1 run function ww:session/officer/end/finalize
execute if score %tied officerVoteCount matches 0 run function ww:session/officer/end/failed