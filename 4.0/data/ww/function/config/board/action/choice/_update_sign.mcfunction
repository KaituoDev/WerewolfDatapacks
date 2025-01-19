# context: @s = player
# inputs: {origin, pos, name: config name, choices}

$execute unless data storage ww:memory config.'$(name)' run return run function ww:chat/_dm {type:'error',message:'設定 $(name) 不存在'}
$execute store result score %count ww.var run data get storage ww:memory config.'$(name)'

# update choices if valid
data remove storage ww:temp choices
$data modify storage ww:temp choices set value $(choices)
execute store result score %length ww.var run data get storage ww:temp choices
$execute if score %length ww.var matches 1.. run \
  data modify storage ww:memory config.'$(name)_Choices' set from storage ww:temp choices

# get display text
data remove storage ww:temp getChoiceDisplayTextInput
$data modify storage ww:temp getChoiceDisplayTextInput set value {name: '$(name)'}
$data modify storage ww:temp getChoiceDisplayTextInput.index set from storage ww:memory config.'$(name)'
function ww:config/board/action/choice/_get_display_text with storage ww:temp getChoiceDisplayTextInput

# set the third line of text on the sign
$execute at @n[nbt={UUID:$(origin)}] run return run \
  data modify block $(pos) front_text.messages[2] set value \
  '{"nbt":"choiceDisplayText","storage":"ww:output","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"function ww:config/board/action/_run {func: \\"ww:config/board/action/_choice\\", args: {name: \\"$(name)\\", pos: \\"$(pos)\\"}}"}}'