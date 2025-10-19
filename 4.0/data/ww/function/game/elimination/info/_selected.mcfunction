# context: @s = player
# inputs: {uuid}

$function ww:chat/_dm {type: 'rich_info', message: '[{"text":"你选择投给 ","color":"white"},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true}]'}

tag @e[tag=this_voter] remove this_voter
tag @s add this_voter

$execute if function ww:player/flag/show_name_while_voting as @a[tag=!this_voter] \
    run function ww:chat/_dm {type: 'rich_info', message: '[{"selector":"@n[tag=this_voter]","color":"green","bold":true}, \
    {"text":" 投给了 ","bold":false,"color":"white"},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"red","bold":true}]'}
$execute unless function ww:player/flag/show_name_while_voting as @a[tag=!this_voter] \
    run function ww:chat/_dm {type: 'rich_info', message: '[{"text":"神秘人","color":"gold","bold":true}, \
    {"text":" 投给了 ","bold":false,"color":"white"},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"red","bold":true}]'}

tag @e[tag=this_voter] remove this_voter

function ww:game/elimination/calculate