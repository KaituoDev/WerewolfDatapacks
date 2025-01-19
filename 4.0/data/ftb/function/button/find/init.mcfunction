# context: @s = player

advancement revoke @s only ftb:used_button

scoreboard players set %raydist ftb.var 40

execute at @s positioned ~ ~1.5 ~ run function ftb:button/find/loop