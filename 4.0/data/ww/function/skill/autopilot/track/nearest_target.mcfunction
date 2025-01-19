# context: @s = player | villager
# output: entities @e[tag=candidate]

tag @e[tag=candidate] remove candidate

execute if score @s ww.autopilotTarget matches 1.. if function ww:skill/autopilot/track/target/fixed run return 1

scoreboard players reset @s ww.autopilotTarget

execute if function ww:game/mode/is_lunatic run return run function ww:skill/autopilot/track/target/nearest

tag @s add this

execute store result score %is_fool ww.var if entity @s[tag=ww.fool]
execute if entity @s[tag=bads] run function ww:skill/autopilot/track/target/bads
execute if entity @s[tag=goods] run function ww:skill/autopilot/track/target/goods
execute if entity @s[tag=spirits] run function ww:skill/autopilot/track/target/spirits

execute if entity @s[tag=ww.lover] run function ww:skill/autopilot/track/filter_lovers

tag @s remove this