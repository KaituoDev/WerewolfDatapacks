# context: server

execute if data storage ww:queue aiRoleTasks[0] run return fail

# queue a new batch
execute as @e[predicate=ww:alive,type=villager] run function ww:queue/_add_ai_role {task: 'ai/behavior/role'}