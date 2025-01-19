# context: @s = player | villager
# inputs: {group}

$tag @e[predicate=ww:alive,scores={ww.pairingGroup=$(group)}] add ww.loversAlive
$tag @e[predicate=ww:alive,scores={ww.pairingOrigin=$(group)}] add ww.loversAlive
