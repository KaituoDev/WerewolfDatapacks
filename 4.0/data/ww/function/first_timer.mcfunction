# context: @s = player

function ww:game/map/_self_tp with storage ww:memory config.LOBBY
tag @s add ww.player
execute at @s run spawnpoint
gamemode adventure @s

scoreboard players set @s ww.firstTimer 1