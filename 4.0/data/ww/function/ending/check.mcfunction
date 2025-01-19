# context: server

execute unless predicate ww:started run return fail

# auto convert madmans if any
execute if score %bads ww.system matches 0 \
 if score %goodsMadmans ww.system matches 1.. run return run \
 function ww:role/madman/convert_all

# lunatic mode
execute if function ww:game/mode/is_lunatic run return run function ww:ending/lunatic

# lovers
execute if function ww:ending/lovers run return run function ww:game/end

# alpha wolves passive
execute if score %alpha_wolves ww.system matches 1.. if score %bads ww.system > %alpha_wolves ww.system run return fail

# goods == 0
execute if score %goods ww.system matches 0 if function ww:ending/extinct/goods run return run function ww:game/end

# spirits == 0
execute if score %spirits ww.system matches 0 if function ww:ending/extinct/spirits run return run function ww:game/end

# bads == 0
execute if score %bads ww.system matches 0 if function ww:ending/extinct/bads run return run function ww:game/end

execute if function ww:game/mode/is_conquer if function ww:ending/winner/conquer run return run function ww:game/end

execute if function ww:ending/damn run return run function ww:game/end