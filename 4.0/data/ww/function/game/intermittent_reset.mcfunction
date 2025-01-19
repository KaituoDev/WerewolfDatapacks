# context: server

function ww:game/elimination/reset
function ww:ai/behavior/autopilot/end

# autopilot dismount
execute as @e[tag=ww.mounted] at @s run function ww:skill/autopilot/dismount

# morph end
execute as @a[tag=ww.morphed] at @s run function ww:skill/ninjutsu_activate/effects/morph/end
execute as @e[tag=ww.morph_entity] run function ww:game/graceful_clean/setup

# za warudo end
function ww:skill/za_warudo/reset

# remove smoke points
kill @e[tag=ww.ninjaSmokePoint]

scoreboard players reset * ww.suitCD
scoreboard players reset * ww.invisItemCD

scoreboard players reset * ww.prophecy
scoreboard players reset * ww.pairing
scoreboard players reset * ww.masochistSearch
scoreboard players reset * ww.rigVote
scoreboard players reset * ww.navigateToAI
scoreboard players reset * ww.question
scoreboard players reset * ww.questionCampaign
scoreboard players reset * ww.send_gift
scoreboard players reset * ww.stealGiftSource
scoreboard players reset * ww.foolStealGiftSource

scoreboard players reset * ww.forceInvis
scoreboard players reset * ww.bomb
scoreboard players reset * ww.immune
scoreboard players reset * ww.ninjaScroll
scoreboard players reset * ww.ninjaTree
# scoreboard players reset * ww.ninjaSmoke
scoreboard players reset * ww.ninjaTransform
scoreboard players reset * ww.sing
# score is reset in skill/za_warudo/end
# scoreboard players reset * ww.za_warudo
scoreboard players reset * ww.autopilotTarget
scoreboard players reset * ww.charm

execute as @e[predicate=ww:alive] run function ww:player/role/_remove_state {path: 'implantBombSource'}

scoreboard players reset %rainbowGlow ww.system

function ww:skill/glow_up/_change_color {color: 'reset'}

clear @a[predicate=ww:alive]
effect clear @e[predicate=ww:alive]
effect give @e[predicate=ww:alive] saturation infinite 0 true
effect give @e[predicate=ww:alive] resistance infinite 4 true

execute as @e[predicate=ww:alive] run attribute @s scale base set 1
execute as @a[predicate=ww:alive] run attribute @s movement_speed base set 0.1
execute as @e[predicate=ww:alive,type=villager] run attribute @s movement_speed base set 0.5

function ww:queue/clear