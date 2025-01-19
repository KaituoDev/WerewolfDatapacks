# context: @s = marker
# inputs: {id,campaign,color,name}

tag @s add ww.role_assignment
$tag @s add $(campaign)
$data modify entity @s data.id set value '$(id)'

$data modify entity @n[tag=ftb.interaction,distance=..1] CustomName set value '{"text":"$(name)","color":"$(color)","bold":true}'
data modify entity @n[tag=ftb.interaction,distance=..1] CustomNameVisible set value 1b