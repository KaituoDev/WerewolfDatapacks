# context: server, %goods ww.system == 0
# scores: %bads ww.system, %goods ww.system, %spirits ww.system

# there are no goods

execute if score %bads ww.system matches 0 if score %spirits ww.system matches 1.. run return run function ww:ending/winner/spirits

execute if score %bads ww.system matches 1.. if score %spirits ww.system matches 0 run return run function ww:ending/winner/bads

return fail