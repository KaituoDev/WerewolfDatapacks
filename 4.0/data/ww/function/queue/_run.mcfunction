# context: server
# inputs: {uuid, func}

$execute as @n[nbt={UUID:$(uuid)}] at @s run function ww:$(func)