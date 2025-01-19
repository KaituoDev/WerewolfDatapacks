# context: server
# references: ww:game/init

# 1. Generates ww:temp roles from pool and poolKeys
# also fills in (total player - total pool count) of villagers
data modify storage ww:temp roles set value []
data modify storage ww:temp poolKeys set from storage ww:memory poolKeys
function ww:game/assign/generate/pools

# autofill villagers if total length of roles < total players
function ww:game/assign/generate/pools/autofill

# not going to autofill wolves, you'd get free wins
# that should be configured by the players

# 2. Generates markers based on ww:temp roles
kill @e[type=marker,tag=ww.role_assignment]
function ww:game/assign/generate/markers

# 3. Initialize bossbar
bossbar set ww:assignment visible true
bossbar set ww:assignment players @a
execute store result bossbar ww:assignment max if entity @e[predicate=ww:player]
bossbar set ww:assignment value 0