# context: @s = wolf mount
# output: returns 1 if true, 0 if false
# inputs: {uuid}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:is_invisible] run return 0

$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:alive] run return 1

return 0