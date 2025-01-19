# context: server

execute if predicate ww:is_night run return run function ww:time/turn_morning

return run function ww:time/turn_night