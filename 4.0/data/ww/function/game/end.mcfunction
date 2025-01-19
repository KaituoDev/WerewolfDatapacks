# context: server

function ftb:game/reset
function ww:game/bar/reset

schedule clear ww:game/begin/assign
schedule clear ww:game/begin/session
#tellraw @a ["bads: ", {"score":{"name":"%bads","objective":"ww.var"}}," | goods: ", {"score":{"name":"%goods","objective":"ww.var"}}," | spirits: ", {"score":{"name":"%spirits","objective":"ww.var"}}]

execute if predicate ww:started as @a run function ww:role/reveal

scoreboard players set %started ww.system 0
scoreboard players set %hasRanOnce ftb.system 0
scoreboard players set %isGameInitiated ww.system 0
scoreboard players set %lunaticSkipNight ww.system 0

# remove NPCs after reveal
execute as @e[tag=ww.player,type=villager] run function ww:game/graceful_clean/setup

# resets players states
data modify storage ww:memory playerRole set value {}
data modify storage ww:memory playerRoleJourney set value {}
function ww:game/reset

# teleport back to lobby
function ww:game/teleport_lobby

function ww:game/show_wins

# place signal block to notify WerewolfUtils plugin that the game has ended
setblock 15 56 99 redstone_block

return 1