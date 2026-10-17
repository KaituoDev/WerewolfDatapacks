# context: server

# Spawn points of this map, spread over the whole area.
forceload add -791 150
forceload add -801 38
forceload add -862 38
forceload add -882 119

# Highest valid index is the number of spawn points minus one.
execute store result score %length ww.var run data get storage pm:memory NeighborhoodSpawnPoints
scoreboard players remove %length ww.var 1

# Every player rolls on their own, so two players may end up on the same point.
execute as @a run function pm:map/neighborhood/spawn/_self

return 1
