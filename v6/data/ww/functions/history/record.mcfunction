## INPUT: storage ww:game history.data
## DISABLED FOR THE TIME BEING

summon marker ~ ~ ~ {Tags:[recording,summoned,history]}

setblock 0 1 0 dark_oak_sign
data modify block 0 1 0 Text1 set from storage ww:game history.data
data modify storage ww:game history.data set from block 0 1 0 Text1

execute as @e[type=marker,tag=summoned] run function ww:history/setup