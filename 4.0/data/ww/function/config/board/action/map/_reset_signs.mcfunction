# context: @s = player
# inputs: {startingIndex}

$data modify storage ww:temp updateSignInput set value {origin: $(origin), glowing: 0b, color: 'white'}
$data modify storage ww:temp updateSelectedSignInput set value {origin: $(origin), glowing: 0b, color: 'yellow'}
$scoreboard players set %index ww.var $(startingIndex)

# offset index by 1
scoreboard players remove %index ww.var 1

execute store result score %maxAllowedIndex ww.var run data get storage ww:memory config.MAX_ALLOWED_MAP_INDEX

# Top Left 0
$function ww:config/board/action/map/_reset_sign {origin: $(origin), pos: '^-1 ^2 ^1'}

# Top Center 
$function ww:config/board/action/map/_reset_sign {origin: $(origin), pos: '^ ^2 ^1'}

# Top Right 2
$function ww:config/board/action/map/_reset_sign {origin: $(origin), pos:'^1 ^2 ^1'}

# Bottom Left 3
$function ww:config/board/action/map/_reset_sign {origin: $(origin), pos: '^-1 ^1 ^1'}

# Bottom Center 4
$function ww:config/board/action/map/_reset_sign {origin: $(origin), pos: '^ ^1 ^1'}

# Bottom Right 5
$function ww:config/board/action/map/_reset_sign {origin: $(origin), pos: '^1 ^1 ^1'}