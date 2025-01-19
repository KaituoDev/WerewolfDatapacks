# context: @s = player, hit by elimination sword
# only used for player hit player detection

advancement revoke @s only ww:hit_by_elimination

# bomb timer
data modify storage ww:temp passBombInput set value {}
execute on attacker run data modify storage ww:temp passBombInput.source set from entity @s UUID
data modify storage ww:temp passBombInput.victim set from entity @s UUID
execute on attacker if score @s ww.bomb matches 1.. run function ww:skill/implant_bomb/_pass with storage ww:temp passBombInput

data modify storage ww:temp saveInput set value {}
data modify storage ww:temp saveInput.uuid set from entity @s UUID
execute on attacker run function ww:game/elimination/variation/_save with storage ww:temp saveInput