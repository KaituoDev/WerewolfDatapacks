# context: @s = dead player | villager
# inputs: {uuid}

data modify storage ww:temp deathRifleInput set value {}
data modify storage ww:temp deathRifleInput.source set from entity @s UUID
$execute as @n[nbt={UUID:$(uuid)},predicate=ww:alive] run \
  function ww:player/death/_rifle with storage ww:temp deathRifleInput