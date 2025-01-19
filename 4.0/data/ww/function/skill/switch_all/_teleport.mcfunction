# context: @s = player | villager
# inputs: {marker}

$tp @n[nbt={UUID:$(marker)}]

$kill @n[nbt={UUID:$(marker)}]