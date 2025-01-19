# context: @s = player
# inputs: {uuid}

tag @s add this
$execute as @a run function ww:chat/_dm {type: 'rich_info', message: '[{"selector":"@n[tag=this]","color":"white","bold":false},{"text":" 反悔投給 ","bold":true,"color":"red"},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true}]'}
tag @s remove this

function ww:game/elimination/calculate