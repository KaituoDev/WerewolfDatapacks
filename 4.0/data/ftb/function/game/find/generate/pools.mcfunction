# context: server
# storage: ftb:temp poolKeys
# output: ftb:temp roles

execute store result score %length ftb.var run data get storage ftb:temp poolKeys
execute if score %length ftb.var matches 0 run return 0

# gets the count from the pool map
data modify storage ftb:temp getPoolCountInput set value {}
data modify storage ftb:temp getPoolCountInput.id set from storage ftb:temp poolKeys[-1].id
execute store result score %count ftb.var run function ftb:game/find/generate/pools/_get_count with storage ftb:temp getPoolCountInput

# remove count taken away by existing players
function ftb:game/find/generate/pools/_reduce_from_existing with storage ftb:temp getPoolCountInput

# insert %count of poolKeys[-1] into roles array
execute if score %count ftb.var matches 1.. run function ftb:game/find/generate/pools/_insert_role with storage ftb:temp getPoolCountInput

data remove storage ftb:temp poolKeys[-1]
function ftb:game/find/generate/pools