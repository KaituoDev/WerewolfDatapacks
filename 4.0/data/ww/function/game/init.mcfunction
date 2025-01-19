# context: server

scoreboard players set %days ww.system 0

# purge cache
data remove storage ww:memory playerData.name

# reset players states
function ww:game/reset
gamemode spectator @a[predicate=ww:narrator]
team join ww.players @a[predicate=ww:player]

# all players to be alive
execute as @e[predicate=ww:player] run function ww:player/_set_state {name: 'playerAlive', value: 1}

#execute as @e[predicate=ww:player] run function ww:player/_set_state {name: 'playerFool', value: 1}

# rest of game inits are in this function
# start > init > assign > session
schedule function ww:game/begin/assign 1t
