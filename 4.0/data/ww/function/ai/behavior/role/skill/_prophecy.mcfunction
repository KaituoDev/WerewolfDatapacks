# context: @s = villager
# inputs: {player, uuid, role, color, campaign}

# validate self not bads and target is bads
$execute unless entity @s[tag=bads] unless entity @n[nbt={UUID:$(uuid)},tag=bads] run return fail

$function ww:player/role/_set_state {path: 'eliminationTarget', value: $(uuid)}