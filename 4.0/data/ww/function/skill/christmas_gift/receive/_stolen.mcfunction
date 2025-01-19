# context: @s = player | villager
# inputs: {sourceId}

$execute as @n[scores={ww.globalId=$(sourceId)}] run function ww:skill/christmas_gift/receive