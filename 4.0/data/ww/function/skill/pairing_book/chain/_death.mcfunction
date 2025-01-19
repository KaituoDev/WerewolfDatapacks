# context: @s = dead player | villager
# inputs: {group}

$execute as @n[scores={ww.pairingGroup=$(group)},predicate=ww:alive] run function ww:player/death/pairing