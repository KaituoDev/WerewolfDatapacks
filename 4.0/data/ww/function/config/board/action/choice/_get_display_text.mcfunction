# context: @s = player
# inputs: {name, index}
# output: ww:output choiceDisplayText

data remove storage ww:output choiceDisplayText
$data modify storage ww:output choiceDisplayText set from storage ww:memory config.$(name)_Choices[$(index)]