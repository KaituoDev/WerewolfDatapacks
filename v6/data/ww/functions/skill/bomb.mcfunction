tag @s add this
tag @p[tag=alive,tag=!this,distance=..10,sort=nearest,tag=!bads] add whiteWolfTarget
tag @s remove this

function ww:particles/explosion
playsound minecraft:entity.dragon_fireball.explode master @a

execute if entity @a[tag=whiteWolfTarget] if entity @s[tag=!fool] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"白狼王 ","bold":true},{"selector":"@s","color":"gold"},{"text":" 發動自爆, 帶著 ","color":"white","bold":false},{"selector":"@p[tag=whiteWolfTarget]","color":"white"},{"text":" 一起死","color":"white","bold":false}]
execute if entity @a[tag=whiteWolfTarget] if entity @s[tag=fool] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"白狼王 ","bold":true},{"selector":"@s","color":"gold"},{"text":" 發動自爆, 但自己蠢到忘記帶著 ","color":"white","bold":false},{"selector":"@p[tag=whiteWolfTarget]","color":"white"},{"text":" 一起死","color":"white","bold":false}]

execute unless entity @a[tag=whiteWolfTarget] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"白狼王 ","bold":true},{"selector":"@s","color":"gold"},{"text":" 發動自爆, 不過周圍沒有人 ","color":"white","bold":false}]

function ww:player/death
execute if entity @s[tag=!fool] as @p[tag=whiteWolfTarget] run function ww:player/death

clear @s warped_fungus_on_a_stick{bomb:1b}

execute if entity @s[tag=!fool] run function ww:time/force_night