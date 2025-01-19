# context: server

# goods ending
execute if score %goods ww.system matches 1.. \
 if score %bads ww.system matches 0 \ 
 if score %spirits ww.system matches 0 \ 
 if function ww:ending/winner/goods \
 run return run function ww:game/end

# bads ending
execute if score %bads ww.system matches 1.. \
 if score %goods ww.system matches 0 \ 
 if score %spirits ww.system matches 0 \ 
 if function ww:ending/winner/bads \
 run return run function ww:game/end

# spirits ending
execute if score %spirits ww.system matches 1.. \
 if score %bads ww.system matches 0 \ 
 if score %goods ww.system matches 0 \ 
 if function ww:ending/winner/spirits \
 run return run function ww:game/end

# no one survives
execute if function ww:ending/damn run return run function ww:game/end

return 0