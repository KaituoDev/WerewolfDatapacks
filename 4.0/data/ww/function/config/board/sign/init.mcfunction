# context: @s = player
# inputs: {origin, facing}

$execute at @e[nbt={UUID: $(origin)}] run fill ^-2 ^-1 ^1 ^2 ^2 ^1 minecraft:dark_oak_wall_sign[facing=$(facing)]{is_waxed:1b}
$execute at @e[nbt={UUID: $(origin)}] run kill @n[type=block_display,tag=ww.config_board.outline]

# set home page
$function ww:config/board/page/_home {origin: $(origin)}

# set lobby if not set yet
execute unless data storage ww:memory config.LOBBY run \
 function ww:config/board/action/set_lobby