# context: @s = player
# storage: ww:temp configInfoPool, ww:temp roles

execute store result score %count ww.var run data get storage ww:temp roles
execute if score %count ww.var matches 0 run return 0

data modify storage ww:temp loopInput set value {}
data modify storage ww:temp loopInput.id set from storage ww:temp roles[0].id
data modify storage ww:temp loopInput.name set from storage ww:temp roles[0].name

function ww:config/info/pool/_loop with storage ww:temp loopInput
data remove storage ww:temp roles[0]

function ww:config/info/pool/loop