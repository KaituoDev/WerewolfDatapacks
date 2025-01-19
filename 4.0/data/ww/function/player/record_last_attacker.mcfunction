# context: @s = player | villager who has been hit
# reference: advancement hit_by_anything

advancement revoke @s only ww:hit_by_anything

data modify storage ww:temp setStateInput set value {name: 'playerLastAttacker'}
execute on attacker if entity @s[predicate=ww:player] run \ 
  data modify storage ww:temp setStateInput.value set from entity @s UUID

# if attacker is a mount, store the rider
execute on attacker if entity @s[tag=ww.mount] on passengers run \ 
  data modify storage ww:temp setStateInput.value set from entity @s UUID

execute if data storage ww:temp setStateInput.value run \
  function ww:player/_set_state with storage ww:temp setStateInput