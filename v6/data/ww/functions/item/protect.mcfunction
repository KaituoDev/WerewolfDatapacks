tag @s add protected
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s

kill @s[nbt={Item:{tag:{unique:1b}}}]