# context: @s = player
# location: at a player

kill @e[type=minecraft:block_display,tag=ww.imprisonment.display,distance=..4]

execute rotated ~ 0 align y positioned ^ ^ ^1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^ ^ ^-1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^1 ^ ^ run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^-1 ^ ^ run function ww:skill/imprisonment/iron_bar

execute rotated ~ 0 align y positioned ^1 ^ ^1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^1 ^ ^-1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^-1 ^ ^1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^-1 ^ ^-1 run function ww:skill/imprisonment/iron_bar

execute rotated ~ 0 align y positioned ^ ^1 ^1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^ ^1 ^-1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^1 ^1 ^ run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^-1 ^1 ^ run function ww:skill/imprisonment/iron_bar

execute rotated ~ 0 align y positioned ^1 ^1 ^1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^1 ^1 ^-1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^-1 ^1 ^1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^-1 ^1 ^-1 run function ww:skill/imprisonment/iron_bar

execute rotated ~ 0 align y positioned ^ ^2 ^1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^ ^2 ^-1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^1 ^2 ^ run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^-1 ^2 ^ run function ww:skill/imprisonment/iron_bar

execute rotated ~ 0 align y positioned ^1 ^2 ^1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^1 ^2 ^-1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^-1 ^2 ^1 run function ww:skill/imprisonment/iron_bar
execute rotated ~ 0 align y positioned ^-1 ^2 ^-1 run function ww:skill/imprisonment/iron_bar

execute rotated ~ 0 align y positioned ^ ^2.5 ^ positioned ~-0.75 ~ ~-0.75 run \
 summon block_display ~ ~ ~ {Tags:["ww.imprisonment.display"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,0.5f,2.5f]},block_state:{Name:"minecraft:iron_block"}}