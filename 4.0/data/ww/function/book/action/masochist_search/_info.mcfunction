# context: @s = player | villager
# inputs: {player, uuid, result, color}

$execute if entity @s[tag=ww.fool] as @a run function ww:chat/_dm {type:'rich_info', message: '[ \
  {"text":"$(player)","color":"white", "bold": false}, \
  {"text":" $(result)", "color": "$(color)", "bold": true}, \
  {"text":" 抖M", "color":"white", "bold": false}]'}

execute if entity @s[tag=ww.fool] run return 1

data remove storage ww:temp narratorInfoInput
$data modify storage ww:temp narratorInfoInput set value {target: '$(player)', result: '$(result)', color: '$(color)'}
data modify storage ww:temp narratorInfoInput.source set from entity @s UUID
function ww:narrator/info/_masochist_search with storage ww:temp narratorInfoInput

# this does return run
$execute if entity @s[tag=!ww.fool,type=player] run function ww:chat/_dm {type:'rich_info', message: '[ \
  {"text":"$(player)","color":"white", "bold": false}, \
  {"text":" $(result)", "color": "$(color)", "bold": true}, \
  {"text":" 抖M", "color":"white", "bold": false} \
]'}