# context: @s = player
# inputs: {uuid}

$item replace entity @s armor.head with player_head[hide_tooltip={},custom_data={mask:true},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=true,profile={id:$(uuid)}] 1
