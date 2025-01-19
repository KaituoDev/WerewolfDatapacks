# context: server

# some commands are only suitable for players
# while others can be applied to other entities

# reset stored states
# moving playerRole to game/end to keep ftb roles
data modify storage ww:memory playerAlive set value {}
data modify storage ww:memory playerRoleState set value {}
data modify storage ww:memory playerOfficer set value {}
data modify storage ww:memory playerFool set value {}
data modify storage ww:memory playerMount set value {}
data modify storage ww:memory mountOwner set value {}
data modify storage ww:memory aiIndex set value {}
data modify storage ww:memory playerMorph set value {}
data modify storage ww:memory playerHarassed set value {}
data modify storage ww:memory playerLastAttacker set value {}
function ww:game/elimination/reset
function ww:skill/za_warudo/reset

bossbar set ww:ai_counter visible false
bossbar set ww:assignment visible false

# assumes books have been opened and interpreted
data remove storage ww:book contents

scoreboard players reset * ww.suitCD
scoreboard players reset * ww.invisItemCD
scoreboard players reset * ww.poisonCD

scoreboard players reset * ww.deaths
scoreboard players reset * ww.prophecy
scoreboard players reset * ww.pairing
scoreboard players reset * ww.masochistSearch
scoreboard players reset * ww.rigVote
scoreboard players reset * ww.navigateToAI
scoreboard players reset * ww.autopilotTarget
scoreboard players reset * ww.question
scoreboard players reset * ww.questionCampaign
scoreboard players reset * ww.spirits.exorcised
scoreboard players reset * ww.send_gift
scoreboard players reset * ww.stealGiftSource
scoreboard players reset * ww.foolStealGiftSource

scoreboard players reset * ww.forceInvis
scoreboard players reset * ww.bomb
scoreboard players reset * ww.kills
scoreboard players reset * ww.immune
scoreboard players reset * ww.ninjaScroll
scoreboard players reset * ww.ninjaTree
# scoreboard players reset * ww.ninjaSmoke
scoreboard players reset * ww.ninjaTransform
scoreboard players reset * ww.sing
scoreboard players reset * ww.za_warudo
scoreboard players reset * ww.charm

scoreboard players reset * ww.pairingGroup
scoreboard players reset * ww.pairingOrigin
scoreboard players set %current ww.pairingOrigin 0

scoreboard players reset %rainbowGlow ww.system
scoreboard players set %isBloodMoon ww.system 0
scoreboard players set %santaRage ww.system 0
scoreboard players set %foolSantaRage ww.system 0
scoreboard players set %convertedMadmans ww.system 0
scoreboard objectives setdisplay sidebar

# dismount vehicles
execute as @a[tag=ww.mounted] at @s run function ww:skill/autopilot/dismount

# morph end
execute as @a[tag=ww.morphed] at @s run function ww:skill/ninjutsu_activate/effects/morph/end

# clear ai autopilot
function ww:ai/behavior/autopilot/end

# clear dummy villagers and morphs
execute as @e[scores={ww.dummyTimer=1..}] run function ww:game/graceful_clean/setup
execute as @e[tag=ww.morph_entity] run function ww:game/graceful_clean/setup

# remove smoke points
kill @e[tag=ww.ninjaSmokePoint]

# remove graves
kill @e[tag=ww.grave]

clear @a
effect clear @a
effect give @a saturation infinite 0 true
effect give @a resistance infinite 4 true
execute as @a run function ww:player/tag/sanitize

function ww:time/reset
function ww:queue/clear

kill @e[tag=ww.mount]

team leave @a
gamemode adventure @a
execute as @e[predicate=ww:player] run attribute @s max_health base set 20
execute as @e[predicate=ww:player] run attribute @s entity_interaction_range base set 3
execute as @e[predicate=ww:player] run attribute @s block_interaction_range base set 5
execute as @e[predicate=ww:player] run attribute @s scale base set 1
execute as @e[predicate=ww:player] run attribute @s gravity base set 0.08
execute as @a[predicate=ww:player] run attribute @s movement_speed base set 0.1
execute as @e[predicate=ww:player,type=villager] run attribute @s movement_speed base set 0.5
