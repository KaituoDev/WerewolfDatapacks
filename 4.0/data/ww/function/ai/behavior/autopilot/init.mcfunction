# context: @s = villager
# location: at @s

# summon a zombified piglin
# with ww.killer_ai tag

# Reminder: because these piglins will be invisible
# their names will be hidden regardless
tag @s add this
execute summon zombified_piglin run function ww:ai/behavior/autopilot/setup
tag @s remove this