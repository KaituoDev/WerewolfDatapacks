# context: @s = player | villager
# location: at @s

execute unless entity @e[tag=ww.grave,distance=..5] run return run \
  function ww:chat/_dm {type: 'warn', message: '请再靠近墓碑'}

function ww:skill/forensic/_examine with entity @n[tag=ww.grave] data