# context: @s = player[predicate=ww:alive]
# location: at @s

execute if score @s ww.elimination matches 1.. run function ww:game/elimination/variation/select
execute if score @s ww.deaths matches 1.. run function ww:player/on_death

# generic

execute if score @s ww.immune matches 1.. run scoreboard players remove @s ww.immune 1

# force invisibility
execute if score @s ww.forceInvis matches 1.. run function ww:player/force_invis

# timed bomb
execute if score @s ww.bomb matches 1.. run function ww:skill/implant_bomb/countdown

# voodoo curses
function ww:skill/voodoo_needle/main


# skills
execute if score @s ww.prophecy matches 1.. run function ww:book/action/prophecy
execute if score @s ww.pairing matches 1.. run function ww:book/action/pairing
execute if score @s ww.ninjaScroll matches 1.. run function ww:book/action/ninja_scroll
execute if score @s ww.masochistSearch matches 1.. run function ww:book/action/masochist_search
execute if score @s ww.rigVote matches 1.. run function ww:book/action/rigged_vote
execute if score @s ww.question matches 1.. run function ww:book/action/question
execute if score @s ww.questionCampaign matches 1.. run function ww:book/action/question_campaign
execute if score @s ww.send_gift matches 1.. run function ww:book/action/send_gift

execute if score @s ww.suitCD matches 0.. run function ww:skill/suit/main
execute if predicate ww:is_suit_up run function ww:skill/suit/passive
execute if score @s ww.ninjaTree matches 1.. run function ww:skill/ninjutsu_activate/effects/tree/main
execute if score @s ww.ninjaTransform matches 1.. run scoreboard players remove @s ww.ninjaTransform 1
execute if score @s ww.nilsSizeReduce matches 1.. run scoreboard players remove @s ww.nilsSizeReduce 1

execute if score @s ww.ninjaTransform matches ..0 run function ww:skill/ninjutsu_activate/effects/mini/reset
execute if score @s ww.nilsSizeReduce matches ..0 run function ww:skill/size_reduce/reset
execute if score @s ww.sing matches 1.. run function ww:skill/sing/main
execute if score @s ww.invisItemCD matches 1.. run function ww:skill/invisible_on/main
execute if score @s ww.charm matches 1.. run function ww:skill/charm/main

effect give @s[tag=ninja,predicate=ww:is_invisible] speed 1 1 true

# auto pilot + refund item
execute if predicate ww:is_not_mounting if function ww:skill/autopilot/dismount \
  run function ww:skill/autopilot/item
# auto pilot tracking for wolves is in ww:main_1s

# killer weapon target indicator
execute if predicate ww:killer_weapon run function ww:skill/autopilot/indicator

# hijack wolves passive
execute if predicate ww:is_night if score %hijack_wolves ww.system matches 1.. \
  unless predicate ww:is_suit_up unless predicate ww:is_masked \
  unless score @s ww.forceInvis matches 1.. \
  run function ww:player/mask
execute if predicate ww:is_night if score %hijack_wolves ww.system matches 0 if predicate ww:is_masked run \
  function ww:player/unmask
execute if predicate ww:is_masked run effect give @s invisibility 5 0 true

# morphing
execute if entity @s[tag=ww.morphed] run function ww:skill/ninjutsu_activate/effects/morph/main

# shovel indicator
execute if predicate ww:is_holding_shovel run function ww:skill/shovel/indicator
execute if predicate ww:is_holding_forensic run function ww:skill/shovel/indicator

function ww:player/actionbar