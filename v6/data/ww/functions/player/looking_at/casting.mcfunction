execute unless score %traditional_ray system matches 1 if predicate ww:staring_player run function ww:player/looking_at
execute unless score %traditional_ray system matches 1 unless predicate ww:staring_player run function ww:player/looking_at/failed

execute if score %traditional_ray system matches 1 run function ww:player/looking_at