# context: server, %spirits ww.system == 0
# scores: %bads ww.system, %goods ww.system, %spirits ww.system

# there are no spirits

execute if score %bads ww.system matches 0 if score %goods ww.system matches 1.. run return run function ww:ending/winner/goods

execute if score %goods ww.system matches 0 if score %bads ww.system matches 1.. run return run function ww:ending/winner/bads

return fail