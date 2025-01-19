scoreboard players set %bads pool 0
scoreboard players operation %bads pool += %wolf pool
scoreboard players operation %bads pool += %white_wolf pool
scoreboard players operation %bads pool += %black_wolf pool
scoreboard players operation %bads pool += %snow_wolf pool
scoreboard players operation %bads pool += %hijack_wolf pool
scoreboard players operation %bads pool += %alpha_wolf pool
scoreboard players operation %bads pool += %rage_wolf pool

scoreboard players set %goods pool 0
scoreboard players operation %goods pool += %hunter pool
scoreboard players operation %goods pool += %seer pool
scoreboard players operation %goods pool += %witch pool
scoreboard players operation %goods pool += %ninja pool
scoreboard players operation %goods pool += %trickster pool
scoreboard players operation %goods pool += %siren pool
scoreboard players operation %goods pool += %cupid pool
scoreboard players operation %goods pool += %masochist pool
scoreboard players operation %goods pool += %sadist pool
scoreboard players operation %goods pool += %digger pool
scoreboard players operation %goods pool += %knight pool
scoreboard players operation %goods pool += %guardian pool
scoreboard players operation %goods pool += %villager pool

scoreboard players set %wraiths pool 0
scoreboard players operation %wraiths pool += %wraith pool
scoreboard players operation %wraiths pool += %voodoo pool
scoreboard players operation %wraiths pool += %bewitcher pool

# validations
# minimum 1 wolf
# minimum 1 villager
# and probably another 1 non-wolf
execute if score %bads pool matches ..0 run function ww:role/assign/guarantee/bad
execute if score %goods pool matches ..0 run function ww:role/assign/guarantee/good

execute store result score %leftover pool if entity @a[predicate=!ww:god]
scoreboard players operation %leftover pool -= %bads pool
scoreboard players operation %leftover pool -= %goods pool
scoreboard players operation %leftover pool -= %wraiths pool
execute if score %leftover pool matches ..0 run scoreboard players set %leftover pool 0
