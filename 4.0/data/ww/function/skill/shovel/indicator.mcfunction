# context: @s = player | villager, holding the shovel or forensic
# location: at @s

execute at @s facing entity @n[type=marker,tag=ww.grave] eyes positioned ~ ~1.5 ~ positioned ^ ^ ^2 run \
  particle soul ~ ~ ~ 0 0 0 0 1 force @s
# grave will store the player's uuid, upon digging, merge role data