# context: @s = player [predicate=killer_weapon]

function ww:skill/autopilot/track/nearest_target
execute at @s facing entity @n[tag=candidate] eyes positioned ~ ~1 ~ positioned ^ ^ ^2 run \
  particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[0.878,0.878,0.000]} ~ ~ ~ 0 0 0 0 1 force @s
tag @e[tag=candidate] remove candidate