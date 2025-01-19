# context: @s = marker, @n[tag=ww.this_assignment] = player

data modify storage ww:temp setRoleInput set value {}
data modify storage ww:temp setRoleInput.id set from entity @s data.id
execute as @n[tag=ww.this_assignment] run function ww:role/_become with storage ww:temp setRoleInput

kill @s