# context: @s = interaction

execute unless data entity @s interaction run return fail
execute if function ftb:click_validation run return fail

execute on target run playsound minecraft:entity.player.levelup
execute on target run function ww:chat/_dm {type: 'info', message: '你找到按钮了！'}

tag @a[tag=ftb.this_finder] remove ftb.this_finder
execute on target run tag @s add ftb.this_finder
execute at @s run function ftb:transfer