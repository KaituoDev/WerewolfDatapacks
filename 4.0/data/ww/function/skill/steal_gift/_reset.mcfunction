# context: @s = player
# inputs: {sourceId}

$scoreboard players reset @e[scores={ww.stealGiftSource=$(sourceId)}] ww.stealGiftSource

$execute as @a[scores={ww.stealGiftSource=$(sourceId)}] run function ww:chat/_dm { \
  type: 'info', \
  message: '在你身上的偷窃礼物的标记消失了' \
}