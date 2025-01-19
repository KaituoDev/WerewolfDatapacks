# context: @s = player shooting steal gift
# inputs: {source, victim}

$execute if entity @n[nbt={UUID:$(victim)},tag=krampus] run return run function ww:chat/_dm { \
  type: 'error', \
  message: '不得标记坎普斯', \
}

$execute if entity @n[nbt={UUID:$(source)},tag=!ww.fool] run \ 
 scoreboard players operation @n[nbt={UUID:$(victim)}] ww.stealGiftSource = @n[nbt={UUID:$(source)}] ww.globalId

$execute if entity @n[nbt={UUID:$(source)},tag=ww.fool] run \ 
 scoreboard players operation @n[nbt={UUID:$(source)}] ww.foolStealGiftSource = @n[nbt={UUID:$(victim)}] ww.globalId

$function ww:narrator/info/_steal_gift {source: $(source), victim: $(victim)}