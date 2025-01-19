# context: server

execute as @e[predicate=ww:alive,tag=madman] run function ww:role/madman/convert

# recalculate total alive bads
function ww:stats/aggregate

scoreboard players set %convertedMadmans ww.system 1