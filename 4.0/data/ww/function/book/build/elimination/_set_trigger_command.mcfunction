# context: @s = player | villager
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp lineInput
# inputs: {id}

$data modify storage ww:temp lineInput.func set value '/trigger ww.elimination set $(id)'

# cannot set as empty string, there will be server error logs
#data modify storage ww:temp lineInput.func set value ''