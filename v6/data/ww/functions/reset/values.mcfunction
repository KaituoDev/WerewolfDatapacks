function ww:reset/values/morning
function ww:reset/values/night

scoreboard players reset * wolfOrder
scoreboard players reset * id
scoreboard players reset * localId
scoreboard players reset * result
scoreboard players reset * team

scoreboard players reset * skill

scoreboard players reset * hunterTarget
scoreboard players reset * cupidSource
scoreboard players reset * cupidPair
scoreboard players reset * scapegoatTarget
scoreboard players reset * hijack
scoreboard players reset * knightTarget

scoreboard players reset * officerVote
scoreboard players reset * officerOrder
scoreboard players reset * onWolfList

scoreboard players reset * voteTrigger
scoreboard players reset * localVoteTrigger

scoreboard players reset * immune
scoreboard players reset * ultimate
scoreboard players reset * escape
scoreboard players reset * dead
scoreboard players set @a dead 0
scoreboard players reset * curse
scoreboard players reset * visible
scoreboard players reset * damageResisted
scoreboard players reset * deathPotion
scoreboard players reset * duel
scoreboard players reset * guardCD
scoreboard players reset * lookingErrorCD

scoreboard players set %started system 0
scoreboard players set %idle system 1
scoreboard players set %day system 1
scoreboard players set %morning system 1
scoreboard players set %riotNightDeathCount system 0
scoreboard players set %time system 10

scoreboard players set %current id 0
scoreboard players set %current localId 0

scoreboard players set %current officerOrder 0
scoreboard players set @a tokens 0
scoreboard players set @a materials 0

data modify storage ww:game book set value {pages: [], title: ""}
data modify storage ww:game diary.seer set value {notes: [], count: 0}
data modify storage ww:game diary.team set value []

bossbar set minecraft:time visible false
bossbar set minecraft:wolf_vote visible false
bossbar set minecraft:skip_item visible false
bossbar set minecraft:officer_vote visible false
bossbar set minecraft:force_morning visible false