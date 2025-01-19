# context: server, check if only a pair of lovers are alive
# output: 1 = true, 0 = false

# go through each player
# if one has a lovers data, continue to see if the players within lovers.players are alive
# then check if lovers.cupid is alive as well
# tag all of them including self, if tag count matches with alive players count, then return 1

scoreboard players set %shouldContinueLoversValidation ww.var 1
execute as @e[predicate=ww:alive,tag=ww.lover] if function ww:ending/lovers/valid run return 1

return 0