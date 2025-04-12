# context: server

execute unless predicate ww:started run return fail

# returns 1 if masochist ending
# finalize before is_night is set to 1, so that death during mornings
# will not trigger lunatic skip night event
execute if function ww:game/elimination/finalize run return 1

scoreboard players set %time ww.system 0
scoreboard players set %is_night ww.system 1
scoreboard players set %ai_can_ff ww.system 0
scoreboard players set %ai_can_vote ww.system 0
scoreboard objectives setdisplay sidebar

team modify ww.officers nametagVisibility never
team modify ww.players nametagVisibility never

team modify ww.officers collisionRule never
team modify ww.players collisionRule never

execute unless predicate ww:started run return fail

function ww:game/bar/carousel/reset
function ww:game/intermittent_reset

title @a subtitle [{"text":"第 ","color":"white"},{"score":{"name":"%days","objective":"ww.system"},"color":"green","bold":true},{"text":" 天","color":"white","bold":false}]
title @a title "夜幕已降临"
tellraw @a {"text":"\n\n********************", "color":"blue","bold":true}
tellraw @a [{"text":"第 ","color":"white"},{"score":{"name":"%days","objective":"ww.system"},"color":"green","bold":true},{"text":" 天夜晚","color":"white","bold":false}]

# skill passives
execute as @e[predicate=ww:alive,type=villager,tag=bads] at @s run function ww:ai/behavior/autopilot/init
function ww:ai/behavior/spread_npc/init

# clean the weekness effect on the first day
execute if score %days ww.system matches 1 run effect clear @a[predicate=ww:alive] weakness

# night items
execute as @a[predicate=ww:alive] run function ww:role/daily
execute if function ww:game/mode/is_lunatic as @a[predicate=ww:alive] run function ww:skill/lunatic_sword/item

# skill gacha
execute as @e[predicate=ww:player] at @s run function ww:skill/on_night

# ai skills reset
scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.rifle_used
scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.poison_potion_used
scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.healing_potion_used
scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.prophecy_used
scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.glow_up_used
scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.blood_moon_used
scoreboard players reset @e[predicate=ww:alive,type=villager,tag=!ww.pairingFinalized] ww.ai.pairing_attempted
scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.ninjutsu_used
scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.masochist_search_used
scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.sing_used

# reset rifle targets if enabled
execute if function ww:config/flag/rifle_reset as @e[predicate=ww:alive] run \
 function ww:player/role/_remove_state {path: 'rifleTarget'}

# force immune + invis
scoreboard players set @e[predicate=ww:alive] ww.forceInvis 100
scoreboard players set @e[predicate=ww:alive] ww.immune 100

# voodoo stacks increment
function ww:skill/voodoo_needle/turn_night

# santa rage at night
execute if score %santaRage ww.system matches 1.. run function ww:role/santa/night_rage
execute if score %foolSantaRage ww.system matches 1.. run function ww:role/santa/fool_night_rage

# prebuilt map
execute if predicate ww:is_our_map run function pm:turn_night

# show controls to navigate to ai for non-alive players
function ww:narrator/navigate/init

# show controls to skip time or end game
execute if score %alivesRealPlayer ww.system matches 0 run function ww:narrator/control/init

return 0