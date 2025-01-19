# context: server

execute at @e[type=marker,tag=ww.grave] run \
  particle soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0 2 force @a[predicate=ww:is_holding_shovel]

execute at @e[type=marker,tag=ww.grave] run \
  particle soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0 2 force @a[predicate=ww:is_holding_forensic]