# context: @s = player

# store self uuid in player role state "hijackedHead"
# use that uuid to replace head with player head in player/mask

data modify storage ww:temp setStateInput set value {path: 'hijackedHead'}
data modify storage ww:temp setStateInput.value set from entity @s UUID

function ww:player/role/_set_state with storage ww:temp setStateInput