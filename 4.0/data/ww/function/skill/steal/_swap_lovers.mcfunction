# context: @s = player | villager
# inputs: {target}

scoreboard players operation %temp ww.var = @s ww.pairingGroup
$scoreboard players operation @s ww.pairingGroup = @n[nbt={UUID:$(target)}] ww.pairingGroup
$scoreboard players operation @n[nbt={UUID:$(target)}] ww.pairingGroup = %temp ww.var