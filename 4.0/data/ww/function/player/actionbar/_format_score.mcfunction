# context: @s = player
# storage: ww:temp actionbarInput
# inputs: {objective, title, titleColor, valueColor, scale}

$data modify storage ww:temp actionbarInput.$(objective) set value {text:'{"text":""}', value: 0}
$execute if score @s ww.$(objective) matches 1.. store result storage ww:temp actionbarInput.$(objective).value int $(scale) run \
  scoreboard players get @s ww.$(objective)
$execute if score @s ww.$(objective) matches 1.. run data modify storage ww:temp actionbarInput.$(objective).text set value \
  '[{"text":" $(title) ","color":"$(titleColor)","bold":true},{"nbt":"actionbarInput.$(objective).value","storage":"ww:temp","color":"$(valueColor)"}]'

