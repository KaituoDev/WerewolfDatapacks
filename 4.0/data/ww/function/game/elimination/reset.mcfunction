# context: server

scoreboard players reset @e[predicate=ww:player] ww.elimination
data modify storage ww:memory playerElimination set value {}
scoreboard players reset * ww.vote_summary
scoreboard players set %maxVoteCount ww.system 0