# context: @s = villager
# inputs: {id, name}
# storage: ww:temp joinStringInput.strings

$data modify storage ww:temp joinStringInput.strings append value \
 '{"text":"[$(name)]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ww.navigateToAI set $(id)"}}'

data modify storage ww:temp joinStringInput.strings append value '{"text":" "}'