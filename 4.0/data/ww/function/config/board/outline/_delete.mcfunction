# context: @s = player
# inputs: {outline, origin}

forceload add ~ ~
# remove origin forceload
data modify storage ww:temp unloadInput set value {}
$data modify storage ww:temp unloadInput.x set from entity @n[nbt={UUID: $(origin)}] Pos[0]
$data modify storage ww:temp unloadInput.y set from entity @n[nbt={UUID: $(origin)}] Pos[1]
$data modify storage ww:temp unloadInput.z set from entity @n[nbt={UUID: $(origin)}] Pos[2]

$kill @n[nbt={UUID: $(outline)}]
$kill @n[nbt={UUID: $(origin)}]

function ww:config/board/outline/_unload with storage ww:temp unloadInput