# context: server
# storage: ww:memory GameBarCarousel
# inputs: {original, length, buffer, slide_length}

execute store result score %length ww.var run data get storage ww:memory GameBarCarousel.buffer
$scoreboard players set %requirement ww.var $(length)
$scoreboard players add %requirement ww.var $(slide_length)
execute if score %length ww.var >= %requirement ww.var run return 1

$data modify storage ww:memory GameBarCarousel.buffer set value '$(buffer)$(original)'

function ww:game/bar/carousel/_create_buffer with storage ww:memory GameBarCarousel