# context: @s = block display, @p[tag=this] = player
# inputs: {scale, direction}

$data merge entity @s {glow_color_override:1b,NoGravity:1b,Glowing:0b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f], \
  scale:$(scale)},block_state:{Name:"minecraft:quartz_block"}, Tags:[ww.config_board.outline, ww.$(direction)], brightness:{sky:15,block:15}}

execute if entity @s[tag=ww.east] positioned ~0.5 ~1 ~2.5 run summon marker ~ ~ ~ {Rotation: [ 90.0f, 0.0f ], data: {facing: "west"}, Tags:[ww.config_board.origin,ww.this_marker]}
execute if entity @s[tag=ww.west] positioned ~0.5 ~1 ~2.5 run summon marker ~ ~ ~ {Rotation: [ -90.0f, 0.0f ], data: {facing: "east"}, Tags:[ww.config_board.origin,ww.this_marker]}
execute if entity @s[tag=ww.south] positioned ~2.5 ~1 ~0.5 run summon marker ~ ~ ~ {Rotation: [ 180.0f, 0.0f ], data: {facing: "north"}, Tags:[ww.config_board.origin,ww.this_marker]}
execute if entity @s[tag=ww.north] positioned ~2.5 ~1 ~0.5 run summon marker ~ ~ ~ {Rotation: [ 0.0f, 0.0f ], data: {facing: "south"}, Tags:[ww.config_board.origin,ww.this_marker]}

data modify storage ww:temp setStateInput set value {name: 'playerConfigBoard', value: {}}
data modify storage ww:temp setStateInput.value.outline set from entity @s UUID
data modify storage ww:temp setStateInput.value.origin set from entity @e[tag=ww.this_marker,sort=nearest,limit=1] UUID
tag @e[tag=ww.this_marker] remove ww.this_marker

execute as @p[tag=this] run function ww:player/_set_state with storage ww:temp setStateInput