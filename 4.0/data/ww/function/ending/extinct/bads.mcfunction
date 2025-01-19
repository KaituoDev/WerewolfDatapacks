# context: server, %bads ww.system == 0
# scores: %bads ww.system, %goods ww.system, %spirits ww.system

# there are no bads

execute if score %spirits ww.system matches 1.. run return run function ww:ending/winner/spirits

return fail