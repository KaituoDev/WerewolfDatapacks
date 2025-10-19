# context: @s = player
# inputs: {uuid}

tag @s add this

$execute if function ww:player/flag/show_name_while_voting as @a \
    run function ww:chat/_dm {type: 'rich_info', message: '[{"selector":"@n[tag=this]","color":"white","bold":false}, \
    {"text":" 反悔投给 ","bold":true,"color":"red"},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true}]'}
$execute unless function ww:player/flag/show_name_while_voting as @a \
    run function ww:chat/_dm {type: 'rich_info', message: '[{"text":"神秘人","color":"gold","bold":true}, \
    {"text":" 反悔投给 ","bold":true,"color":"red"},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true}]'}

tag @s remove this

function ww:game/elimination/calculate