# context: @s = player [predicate=killer_weapon]

function ww:skill/autopilot/track/nearest_target

# Aiming at the feet makes the ray longer than the horizontal gap, so a close
# target would end up behind the dot. In that case park the dot on the feet.
execute at @s if entity @n[tag=candidate,distance=..2.5] at @n[tag=candidate] run \
  particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[0.878,0.878,0.000]} ~ ~ ~ 0 0 0 0 1 force @s

# The ray starts at the eyes of the tracking player and ends at the feet of the
# tracked one. Feet are used on purpose: a shrunken target has an unreliable eye
# height, and a low ray does not cover the target while chasing. The anchor also
# has to be set before facing, otherwise the direction is measured from the feet.
execute at @s unless entity @n[tag=candidate,distance=..2.5] anchored eyes facing entity @n[tag=candidate] feet run \
  particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[0.878,0.878,0.000]} ^ ^ ^2.5 0 0 0 0 1 force @s
tag @e[tag=candidate] remove candidate