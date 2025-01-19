# context: @s = player | villager
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp pairing
# inputs: {uuid}

$execute if entity @n[nbt={UUID:$(uuid)},tag=ww.lover] run return 1

return 0