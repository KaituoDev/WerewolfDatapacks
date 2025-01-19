function ww:role/assign/load

execute as @a run function ww:chat/separator
data modify storage ww:game chat.plain set value ''
tellraw @a [{"text":"          職業獎池","color":"white","bold":true}]

execute if score %bads pool matches 1.. run function ww:role/assign/display/bads
execute if score %goods pool matches 1.. run function ww:role/assign/display/goods
execute if score %wraiths pool matches 1.. run function ww:role/assign/display/wraiths
execute if score %fool pool matches 1.. run function ww:role/assign/display/fool

execute as @a run function ww:chat/separator