scoreboard players set %raydist var 24
scoreboard players set %result var 0

# execute at @s anchored eyes run function fd:button/phase_2/looking/main
execute at @s positioned ~ ~1.5 ~ run function fd:button/phase_2/looking/main

scoreboard players set %raydist var -1
scoreboard players set %result var 0