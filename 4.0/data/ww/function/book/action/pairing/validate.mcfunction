# context: @s = player
# storage: ww:temp pairing
# output: 1 = true, 0 = false

# pairing = [{uuid: UUID, player: str}]
data modify storage ww:temp pairing set value []
function ww:player/role/get_state
execute if data storage ww:output playerState.pairing[0] run \
  data modify storage ww:temp pairing set from storage ww:output playerState.pairing

execute store result score %loversCount ww.var run data get storage ww:memory config.LOVERS_COUNT
execute store result score %length ww.var run data get storage ww:temp pairing
#tellraw @a [{"nbt":"pairing","storage":"ww:temp"}," | ",{"score":{"name":"%length","objective":"ww.var"}}," | ",{"score":{"name":"%count","objective":"ww.var"}}]
execute unless score %length ww.var = %loversCount ww.var run return 0

# sanitizes current selections, make sure all are alive
function ww:book/action/pairing/sanitize

# after sanitization, perform another length check
execute store result score %loversCount ww.var run data get storage ww:memory config.LOVERS_COUNT
execute store result score %length ww.var run data get storage ww:temp pairing
#tellraw @a [{"nbt":"pairing","storage":"ww:temp"}," | ",{"score":{"name":"%length","objective":"ww.var"}}," | ",{"score":{"name":"%count","objective":"ww.var"}}]
execute unless score %length ww.var = %loversCount ww.var run return 0

# all selected players are alive, and length meets requirement
return 1