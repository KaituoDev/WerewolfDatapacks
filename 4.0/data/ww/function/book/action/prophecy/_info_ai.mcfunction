# context: @s = player | villager
# inputs: {player, uuid, role, color, campaign}

$execute as @a[predicate=!ww:narrator] run function ww:chat/_dm {type:'rich_info', message: '[ \
  {"text":"某村民查到 $(player)","color":"white"}, \
  {"text":" 隸屬於 ", "color":"white", "bold": false}, \
  {"text":"$(campaign)", "color": "$(color)", "bold": true} \
]'}

$data modify storage ww:temp narratorInfoInput set value {victim: $(uuid), campaign: '$(campaign)'}
data modify storage ww:temp narratorInfoInput.source set from entity @s UUID
function ww:narrator/info/_prophecy with storage ww:temp narratorInfoInput