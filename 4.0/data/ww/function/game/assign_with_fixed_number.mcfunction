# context: server

execute unless entity @e[predicate=ww:player,tag=!ww.has_role] run return run \
  schedule function ww:game/begin/session 1t

schedule function ww:game/assign_with_fixed_number 1t
execute store result bossbar ww:assignment value if entity @e[predicate=ww:player,tag=ww.has_role]

# Get a random marker + set role
tag @e[tag=ww.this_assignment] remove ww.this_assignment
tag @n[predicate=ww:player,tag=!ww.has_role,sort=random] add ww.this_assignment

# count existing roles
scoreboard players set bads ww.config 0
scoreboard players set goods ww.config 0
scoreboard players set spirits ww.config 0
execute as @e[predicate=ww:player,tag=bads] run scoreboard players add bads ww.config 1
execute as @e[predicate=ww:player,tag=goods] run scoreboard players add goods ww.config 1
execute as @e[predicate=ww:player,tag=spirits] run scoreboard players add spirits ww.config 1

# guarantee 1 seer if exists in pool and limit is not reached
execute if score goods ww.config < goodsMax ww.config if entity @e[nbt={data:{id:"seer"}},tag=goods,type=marker,tag=ww.role_assignment] as @e[nbt={data:{id:"seer"}},tag=goods,type=marker,tag=ww.role_assignment,sort=random,limit=1] run return run function ww:game/assign/set_role

# fill bads if exists in pool until limit is reached
execute if score bads ww.config < badsMax ww.config if entity @e[tag=bads,type=marker,tag=ww.role_assignment] as @e[tag=bads,type=marker,tag=ww.role_assignment,sort=random,limit=1] run return run function ww:game/assign/set_role

# fill spirits if exists in pool until limit is reached
execute if score spirits ww.config < spiritsMax ww.config if entity @e[tag=spirits,type=marker,tag=ww.role_assignment] as @e[tag=spirits,type=marker,tag=ww.role_assignment,sort=random,limit=1] run return run function ww:game/assign/set_role

# fill goods if exists in pool until limit is reached
execute if score goods ww.config < goodsMax ww.config if entity @e[tag=goods,type=marker,tag=ww.role_assignment] as @e[tag=goods,type=marker,tag=ww.role_assignment,sort=random,limit=1] run return run function ww:game/assign/set_role

# default
execute as @e[type=marker,tag=ww.role_assignment,sort=random,limit=1] run function ww:game/assign/set_role