# morning vote item is handled in parent function
# same as role/equip
# deaths are determined by the "dead" score

tag @a[tag=wolfTarget] add dying
tag @a[tag=witchTarget] add dying


# make sure to not let dead wraiths be dead again
execute as @a[tag=dying,tag=wraiths,tag=alive,tag=seerTarget] run function ww:player/death/wraith

# curse layers
tag @a[tag=alive,scores={curse=3..}] add dying

# announce knight targets
execute as @a[tag=knight,tag=alive,scores={knightTarget=1..}] run function ww:vote/knight/announce

# knight wrongs
tag @a[tag=alive,tag=knightWrong] add dying
# knight duels
tag @a[tag=alive,tag=knightTarget] add dying
# knight mistaken
tag @a[tag=alive,tag=knightMistaken] add dying
# knight beaten
tag @a[tag=alive,tag=knightBeaten] add dying

# for all alive ninjas, check their scapegoat identities, or if selected wolves
execute as @a[tag=ninja,tag=alive] run function ww:vote/ninja/check

########################################################
### At this point all "dying" tags have been applied ###
########################################################

execute as @a[tag=villagerSave,tag=dying] run function ww:player/saved/villager
execute as @a[tag=witchSave,tag=!wraiths,tag=dying] run function ww:player/saved/witch
execute as @a[tag=guardianSave,tag=!wraiths] run function ww:player/saved/guardian


# non-fool wraiths campaign will always be invincible
# only if there are at least 1 goods player alive
execute if entity @a[tag=alive,tag=goods] run tag @a[tag=wraiths,tag=!fool,tag=!seerTarget] remove dying

# immortal tags will be removed in ww:reset/tags/debate
# so this would not work
# tag @a[tag=immortal,tag=dying] remove dying


# messages for players who die for ninja
execute as @a[tag=dying,tag=ninjaTarget,tag=alive] run function ww:vote/ninja/message

# message for ninjas who wrongly chosen wolf
execute as @a[tag=dying,tag=ninjaWrong,tag=alive] run function ww:vote/ninja/death

# messages for players who died in knights duel
execute as @a[tag=dying,tag=knightTarget,tag=alive] run function ww:vote/knight/success
# messages for knights who failed to select bads
execute as @a[tag=dying,tag=knightWrong,tag=alive] run function ww:vote/knight/death
# messages for players who was mistakenly killed by a fool knight
execute as @a[tag=dying,tag=knightMistaken,tag=alive] run function ww:vote/knight/mistaken
# messages for fool knights who was beaten by a bads
execute as @a[tag=dying,tag=knightBeaten,tag=alive] run function ww:vote/knight/beaten

# messages for fool guardian protecting bewitched seers
execute as @a[tag=dying,tag=guardianMistaken,tag=alive] run function ww:player/death/fool_guardian

# message for villagers who failed to escape
# this function does not do ww:player/death
execute as @a[tag=dying,tag=villagerFailed] run function ww:player/death/villager

# dead players
execute as @a[tag=dying,tag=alive,scores={curse=3..}] run function ww:player/death/curse
execute as @a[tag=dying,tag=alive,tag=wolfTarget] unless score @s dead matches 1.. run function ww:player/death/wolf
execute as @a[tag=dying,tag=alive,tag=witchTarget] unless score @s dead matches 1.. run function ww:player/death/witch
execute as @a[tag=dying,tag=alive] unless score @s dead matches 1.. run function ww:player/death

execute as @a run function ww:reset/tags/debate

execute as @a[tag=alive] run function ww:item/skill/skip
# morning book should be given after local id reset
# this function is before the reset