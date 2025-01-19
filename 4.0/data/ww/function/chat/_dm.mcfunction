# context: @s = player
# inputs: {type, message: text component}

$data modify storage ww:temp message set value '$(message)'
$function ww:chat/type/$(type)
data remove storage ww:temp message