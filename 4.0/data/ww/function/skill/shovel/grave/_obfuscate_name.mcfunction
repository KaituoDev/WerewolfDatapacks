# context: @s = player | villager
# inputs: {name}
# storage: ww:temp setupGraveInput

$data modify storage ww:temp setupGraveInput.suspectsStrings append value '??$(name)??'
