# context: server

execute if data storage ww:queue aiTasks[0] run function ww:queue/consume/ai
execute if data storage ww:queue aiRoleTasks[0] run function ww:queue/consume/ai_role
execute if data storage ww:queue killerAITasks[0] run function ww:queue/consume/killer_ai

schedule function ww:queue/main_1s 1s