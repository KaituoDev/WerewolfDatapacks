# context: server

execute unless predicate ww:started run return fail

scoreboard players set %time ww.system 0
scoreboard players set %is_night ww.system 0
scoreboard players add %days ww.system 1
scoreboard players set %ai_can_ff ww.system 0
scoreboard players set %ai_can_vote ww.system 0
scoreboard players set %isBloodMoon ww.system 0
scoreboard players set %santaRage ww.system 0
scoreboard players set %foolSantaRage ww.system 0

execute if score %days ww.system matches 2.. run scoreboard objectives setdisplay sidebar ww.vote_summary

team modify ww.officers nametagVisibility always
team modify ww.players nametagVisibility always

team modify ww.officers collisionRule always
team modify ww.players collisionRule always

#function ww:game/elimination/finalize

function ww:game/bar/carousel/reset
function ww:game/intermittent_reset

title @a subtitle [{"text":"第 ","color":"white"},{"score":{"name":"%days","objective":"ww.system"},"color":"green","bold":true},{"text":" 天","color":"white","bold":false}]
title @a title "太阳已升起"
tellraw @a {"text":"\n\n********************", "color":"blue","bold":true}
tellraw @a [{"text":"第 ","color":"white"},{"score":{"name":"%days","objective":"ww.system"},"color":"green","bold":true},{"text":" 天白天","color":"white","bold":false}]

# skill passives
# to ensure role swap happens before daily items
execute as @e[predicate=ww:player] run function ww:skill/on_morning

# give all players weakness effect on the first day
execute if score %days ww.system matches 1 run effect give @a weakness infinite 2

# morning items
execute if score %days ww.system matches 2.. as @a[predicate=ww:alive] run function ww:game/elimination/item
execute as @a[predicate=ww:alive] run function ww:time/fast_forward/item
execute as @a[predicate=ww:alive] run function ww:role/daily

# ai skills reset
scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.explosion_used
scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.implant_bomb_used
scoreboard players reset @e[predicate=ww:alive,type=villager,tag=!ww.pairingFinalized] ww.ai.pairing_attempted
execute if score %alivesRealPlayer ww.system matches 0 run scoreboard players set %ai_can_ff ww.system 1
execute if score %alivesRealPlayer ww.system matches 0 run scoreboard players set %ai_can_vote ww.system 1

# force immune + invis
scoreboard players set @e[predicate=ww:alive] ww.forceInvis 100
scoreboard players set @e[predicate=ww:alive] ww.immune 100

# ai behaviors
scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.fast_forward_used
execute if score %days ww.system matches 2.. run scoreboard players reset @e[predicate=ww:alive,type=villager] ww.ai.elimination_used
execute if score %days ww.system matches 2.. run schedule function ww:game/elimination/calculate 1s

# apply glowing all
execute if function ww:config/flag/should_glow_all run \
  effect give @e[predicate=ww:alive] glowing infinite 0 true

# prebuilt map
execute if predicate ww:is_our_map run function pm:turn_morning

# show controls to navigate to ai for non-alive players
function ww:narrator/navigate/init

# show controls to skip time or end game
execute if score %alivesRealPlayer ww.system matches 0 run function ww:narrator/control/init

return 0