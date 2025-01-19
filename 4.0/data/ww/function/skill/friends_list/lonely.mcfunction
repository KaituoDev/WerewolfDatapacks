# context: @s = player, the only player in a campaign

execute if entity @s[tag=bads] run function ww:chat/_dm {type: 'info', message: '你是場上僅存的狼人陣營'}
execute if entity @s[tag=goods] run function ww:chat/_dm {type: 'info', message: '你是場上僅存的人類陣營'}
execute if entity @s[tag=spirits] run function ww:chat/_dm {type: 'info', message: '你是場上僅存的怨靈陣營'}