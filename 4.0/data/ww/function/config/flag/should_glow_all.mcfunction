# context: server

execute store result score %requiredDays ww.var run data get storage ww:memory config.GLOWING_ON_DAY
execute if score %requiredDays ww.var matches 1.. \ 
  unless predicate ww:is_night if score %days ww.system >= %requiredDays ww.var run return 1

execute store result score %requiredPlayers ww.var run data get storage ww:memory config.GLOWING_PLAYERS_REMAIN
execute if score %requiredPlayers ww.var matches 1.. \
  unless predicate ww:is_night if score %alives ww.system <= %requiredPlayers ww.var run return 1

return 0