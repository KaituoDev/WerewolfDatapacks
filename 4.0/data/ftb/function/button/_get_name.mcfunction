# context: @s = player
# inputs: {index}
# output: ftb:output buttonName

data remove storage ftb:output buttonName
$data modify storage ftb:output buttonName set from storage ftb:memory BUTTONS[$(index)]