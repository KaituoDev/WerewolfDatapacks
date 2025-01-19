# context: @s = player | villager
# inputs: {sourceId}

$execute as @p[scores={ww.globalId=$(sourceId)}] run function ww:chat/_dm { \
 type: 'info', \
 message: '你撿到掉落的禮物', \
}
$execute as @n[scores={ww.globalId=$(sourceId)}] run function ww:skill/christmas_gift/receive