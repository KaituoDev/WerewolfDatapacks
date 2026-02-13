# context: @s = victim player | villager

advancement revoke @s only ww:exorcist_hit_by_spirit

data modify storage ww:temp deathCorruptionInput set value {}
execute on attacker run data modify storage ww:temp deathCorruptionInput.source set from entity @s UUID
function ww:player/death/_corruption with storage ww:temp deathCorruptionInput

# clear up
data remove storage ww:temp deathCorruptionInput