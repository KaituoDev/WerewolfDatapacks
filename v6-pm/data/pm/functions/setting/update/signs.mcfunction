fill 7 73 64 -2 70 64 air
fill 7 73 64 -2 70 64 minecraft:dark_oak_wall_sign[facing=north]

fill 28 73 37 28 70 42 air
fill 28 73 37 28 70 42 minecraft:dark_oak_wall_sign[facing=west]

fill -23 73 43 -23 70 36 air
fill -23 73 43 -23 70 36 minecraft:dark_oak_wall_sign[facing=east]

fill -1 72 14 6 70 14 air
fill -1 72 14 6 70 14 minecraft:dark_oak_wall_sign[facing=south]

# north side (front)
execute positioned 4 73 64 run function pm:setting/update/signs/pool
execute positioned 3 73 64 run function pm:setting/update/signs/mode
execute positioned 2 73 64 run function pm:setting/update/signs/map
execute positioned 1 73 64 run function pm:setting/update/signs/time

execute positioned 3 70 64 run function pm:setting/update/signs/start
execute positioned 2 70 64 run function pm:setting/update/signs/detail

execute positioned 4 72 64 run function pm:setting/update/signs/misc/officer
execute positioned 3 72 64 run function pm:setting/update/signs/misc/fast
execute positioned 2 72 64 run function pm:setting/update/signs/misc/find_buttons
execute positioned 1 72 64 run function pm:setting/update/signs/misc/fall_damage

execute positioned 4 71 64 run function pm:setting/update/signs/misc/death_reason
execute positioned 3 71 64 run function pm:setting/update/signs/misc/glow
execute positioned 2 71 64 run function pm:setting/update/signs/misc/fool
execute positioned 1 71 64 run function pm:setting/update/signs/misc/teaming
execute positioned 4 70 64 run function pm:setting/update/signs/misc/show_wins

fill 8 73 64 8 70 60 minecraft:barrier replace air
fill 7 73 60 7 70 63 minecraft:dark_oak_wall_sign[facing=west]

execute positioned 7 73 60 run function pm:setting/update/signs/pool/goods/hunter
execute positioned 7 73 61 run function pm:setting/update/signs/pool/goods/seer
execute positioned 7 73 62 run function pm:setting/update/signs/pool/goods/witch
execute positioned 7 73 63 run function pm:setting/update/signs/pool/goods/ninja
execute positioned 7 72 60 run function pm:setting/update/signs/pool/goods/trickster
execute positioned 7 72 61 run function pm:setting/update/signs/pool/goods/cupid
execute positioned 7 72 62 run function pm:setting/update/signs/pool/goods/siren
execute positioned 7 72 63 run function pm:setting/update/signs/pool/goods/masochist
execute positioned 7 71 60 run function pm:setting/update/signs/pool/goods/sadist
execute positioned 7 71 61 run function pm:setting/update/signs/pool/goods/digger
execute positioned 7 71 62 run function pm:setting/update/signs/pool/goods/knight
execute positioned 7 71 63 run function pm:setting/update/signs/pool/goods/guardian
execute positioned 7 70 60 run function pm:setting/update/signs/pool/goods/villager

fill -3 73 63 -3 70 60 minecraft:barrier replace air
fill -2 73 63 -2 70 60 minecraft:dark_oak_wall_sign[facing=east]

execute positioned -2 73 63 run function pm:setting/update/signs/pool/bads/wolf
execute positioned -2 73 62 run function pm:setting/update/signs/pool/bads/white_wolf
execute positioned -2 73 61 run function pm:setting/update/signs/pool/bads/black_wolf
execute positioned -2 73 60 run function pm:setting/update/signs/pool/bads/snow_wolf
execute positioned -2 72 63 run function pm:setting/update/signs/pool/bads/hijack_wolf
execute positioned -2 72 62 run function pm:setting/update/signs/pool/bads/alpha_wolf

execute positioned -2 71 63 run function pm:setting/update/signs/pool/wraiths/wraith
execute positioned -2 71 62 run function pm:setting/update/signs/pool/wraiths/voodoo
execute positioned -2 71 61 run function pm:setting/update/signs/pool/wraiths/bewitcher

# west side (left)
execute positioned 28 73 38 run function pm:setting/update/signs/pool
execute positioned 28 73 39 run function pm:setting/update/signs/mode
execute positioned 28 73 40 run function pm:setting/update/signs/map
execute positioned 28 73 41 run function pm:setting/update/signs/time

execute positioned 28 70 38 run function pm:setting/update/signs/map/random
execute positioned 28 70 39 run function pm:setting/update/signs/start
execute positioned 28 70 40 run function pm:setting/update/signs/detail

execute positioned 28 72 37 run function pm:setting/update/signs/map/1
execute positioned 28 72 38 run function pm:setting/update/signs/map/2
execute positioned 28 72 39 run function pm:setting/update/signs/map/3
execute positioned 28 72 40 run function pm:setting/update/signs/map/4
execute positioned 28 72 41 run function pm:setting/update/signs/map/5
execute positioned 28 72 42 run function pm:setting/update/signs/map/6
execute positioned 28 71 37 run function pm:setting/update/signs/map/7
execute positioned 28 71 38 run function pm:setting/update/signs/map/8
execute positioned 28 71 39 run function pm:setting/update/signs/map/9
execute positioned 28 71 40 run function pm:setting/update/signs/map/10
execute positioned 28 71 41 run function pm:setting/update/signs/map/11

# east side (right)
execute positioned -23 73 41 run function pm:setting/update/signs/pool
execute positioned -23 73 40 run function pm:setting/update/signs/mode
execute positioned -23 73 39 run function pm:setting/update/signs/map
execute positioned -23 73 38 run function pm:setting/update/signs/time

execute positioned -23 72 40 run function pm:setting/update/signs/mode/riot
execute positioned -23 72 39 run function pm:setting/update/signs/mode/debate
execute positioned -23 71 40 run function pm:setting/update/signs/mode/bads_conquer
execute positioned -23 71 39 run function pm:setting/update/signs/mode/bads_massacre
# execute positioned -23 71 39 run function pm:setting/update/signs/mode/gacha

execute positioned -23 70 40 run function pm:setting/update/signs/start
execute positioned -23 70 39 run function pm:setting/update/signs/detail

# south side (back)
execute positioned 1 72 14 run function pm:setting/update/signs/pool
execute positioned 2 72 14 run function pm:setting/update/signs/mode
execute positioned 3 72 14 run function pm:setting/update/signs/map
execute positioned 4 72 14 run function pm:setting/update/signs/time

execute positioned 1 71 14 run function pm:setting/update/signs/time/morning
execute positioned 2 71 14 run function pm:setting/update/signs/time/night
execute positioned 3 71 14 run function pm:setting/update/signs/time/wolf

execute positioned 2 70 14 run function pm:setting/update/signs/start
execute positioned 3 70 14 run function pm:setting/update/signs/detail