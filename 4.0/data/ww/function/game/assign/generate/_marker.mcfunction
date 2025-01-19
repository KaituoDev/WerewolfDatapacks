# context: @s = marker
# inputs: {id, campaign}

tag @s add ww.role_assignment
$tag @s add $(campaign)
$data modify entity @s data.id set value '$(id)'
# $data modify entity @s data.campaign set value '$(campaign)'