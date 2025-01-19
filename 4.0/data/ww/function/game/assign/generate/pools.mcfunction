# context: server
# storage: ww:temp poolKeys
# output: ww:temp roles

execute store result score %length ww.var run data get storage ww:temp poolKeys
execute if score %length ww.var matches 0 run return 0

# gets the count from the pool map
data modify storage ww:temp getPoolCountInput set value {}
data modify storage ww:temp getPoolCountInput.id set from storage ww:temp poolKeys[-1].id
execute store result score %count ww.var run function ww:game/assign/generate/pools/_get_count with storage ww:temp getPoolCountInput

# remove count taken away by existing players
function ww:game/assign/generate/pools/_reduce_from_existing with storage ww:temp getPoolCountInput

# insert %count of poolKeys[-1] into roles array
execute if score %count ww.var matches 1.. run function ww:game/assign/generate/pools/_insert_role with storage ww:temp getPoolCountInput

data remove storage ww:temp poolKeys[-1]
function ww:game/assign/generate/pools