# context: @s = player
# inputs: {group}
# storage: ww:temp actionbarInput.lovers

$data modify storage ww:temp actionbarInput.lovers.text set value \
  '[{"text":" 恋人 ","color":"aqua","bold":true},{"selector":"@e[scores={ww.pairingGroup=$(group)},distance=0.01..]","color":"white"}]'
