# context: server

execute if data storage ww:queue tasks[0] run function ww:queue/consume/default
execute if data storage ww:queue autopilotTasks[0] run function ww:queue/consume/autopilot

schedule function ww:queue/main 1t