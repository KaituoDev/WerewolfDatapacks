# context: @s = attacker, @n[tag=this] = victim

# bomb timer
data modify storage ww:temp passBombInput set value {}
data modify storage ww:temp passBombInput.source set from entity @s UUID
data modify storage ww:temp passBombInput.victim set from entity @n[tag=this] UUID
execute if score @s ww.bomb matches 1.. run function ww:skill/implant_bomb/_pass with storage ww:temp passBombInput

# save vote on behalf of attacker
data modify storage ww:temp saveInput set value {}
data modify storage ww:temp saveInput.uuid set from entity @n[tag=this] UUID
function ww:game/elimination/variation/_save with storage ww:temp saveInput