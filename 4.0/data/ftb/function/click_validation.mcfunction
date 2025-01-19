# context: @s = interaction, on target = player

# if player has no role yet, resume assignment
execute on target unless function ww:player/flag/has_role run return fail

execute on target run function ww:chat/_dm {type: 'error', message: '你已經有職業了！'}
data remove entity @s interaction

# break out
return 1