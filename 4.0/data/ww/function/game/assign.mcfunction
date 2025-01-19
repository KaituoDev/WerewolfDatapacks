# context: server

execute unless entity @e[predicate=ww:player,tag=!ww.has_role] run return run \
  schedule function ww:game/begin/session 1t

schedule function ww:game/assign 1t
execute store result bossbar ww:assignment value if entity @e[predicate=ww:player,tag=ww.has_role]

# Get a random marker + set role
tag @e[tag=ww.this_assignment] remove ww.this_assignment
tag @n[predicate=ww:player,tag=!ww.has_role,sort=random] add ww.this_assignment
# guarantee 1 bads
execute unless entity @e[predicate=ww:player,tag=bads] as @e[tag=bads,type=marker,tag=ww.role_assignment,sort=random,limit=1] run return run function ww:game/assign/set_role

# guarantee 1 spirits if exists in pool
execute if entity @e[tag=spirits,type=marker,tag=ww.role_assignment] unless entity @e[predicate=ww:player,tag=spirits] as @e[tag=spirits,type=marker,tag=ww.role_assignment,sort=random,limit=1] run return run function ww:game/assign/set_role

# guarantee 1 spirits if exists in pool
execute if entity @e[tag=goods,type=marker,tag=ww.role_assignment] unless entity @e[predicate=ww:player,tag=goods] as @e[tag=goods,type=marker,tag=ww.role_assignment,sort=random,limit=1] run return run function ww:game/assign/set_role

# default
execute as @e[type=marker,tag=ww.role_assignment,sort=random,limit=1] run function ww:game/assign/set_role