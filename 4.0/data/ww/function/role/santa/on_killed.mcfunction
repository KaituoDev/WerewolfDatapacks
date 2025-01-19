# context: @s = player killed by wolf, on attacker = attacking entity

execute on attacker run function ww:chat/_dm { \
  type: 'warn', \
  message: '你殺了聖誕老人，你將會受到懲罰！' \
}

execute if entity @s[tag=ww.fool] run return run execute on attacker run \
 effect give @s speed 10 10 true

execute on attacker run \
 effect give @s slowness 10 2 true

execute on attacker run \
 effect give @s darkness 10 0 true