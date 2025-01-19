# context: @s = player[gamemode=spectator]
# inputs: {uuid}

gamemode spectator @s
$spectate @n[nbt={UUID:$(uuid)}]