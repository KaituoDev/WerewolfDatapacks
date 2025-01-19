# context: @s = player | villager
# inputs: {id, name, campaign}

$execute if predicate ww:is_night run return run function ww:role/$(id)/on_night

$return run function ww:role/$(id)/on_morning