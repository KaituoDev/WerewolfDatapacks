# context: @s = some entity being victim
# inputs: {uuid}

# prevent suicide from being counted
$execute if entity @s[nbt={UUID: $(uuid)}] run return fail

$scoreboard players add @n[nbt={UUID: $(uuid)}] ww.kills 1

$execute as @p[nbt={UUID: $(uuid)}] run function ww:chat/_dm {type: 'info', message: '击杀数 + 1'}

$execute if entity @n[tag=bloody_wolf,type=player,nbt={UUID: $(uuid)}] unless predicate ww:has_blood_moon_item run function ww:skill/blood_moon/item