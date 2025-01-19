# context: @s = villager
# location: at @s

# night behaviors
execute if predicate ww:is_night run return run function ww:ai/behavior/role/night

# morning behaviors
return run function ww:ai/behavior/role/morning