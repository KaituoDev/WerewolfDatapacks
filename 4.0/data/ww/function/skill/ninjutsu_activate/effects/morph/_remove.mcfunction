# context: @s = player
# inputs: {uuid}

$execute as @n[nbt={UUID:$(uuid)}] run function ww:game/graceful_clean/setup