# context: @s = player, the only player in a campaign

execute if entity @s[tag=bads] run function ww:chat/_dm {type: 'info', message: '你是场上仅存的狼人阵营'}
execute if entity @s[tag=goods] run function ww:chat/_dm {type: 'info', message: '你是场上仅存的人类阵营'}
execute if entity @s[tag=spirits] run function ww:chat/_dm {type: 'info', message: '你是场上仅存的怨灵阵营'}