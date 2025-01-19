# context: @s = player | villager, selections meet requirements
# storage: ww:temp pairing, ww:temp pairingClone
# inputs: {uuid, player: str}

$scoreboard players operation @n[nbt={UUID:$(uuid)}] ww.pairingGroup = @s ww.pairingOrigin

# add ww.lover tag
# $execute as @n[nbt={UUID:$(uuid)}] run \
#   function ww:player/tag/sanitize
$tag @n[nbt={UUID:$(uuid)}] add ww.lover