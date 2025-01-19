# context: @s = player | villager, @n[tag=this] = player activated guard skill

execute as @n[tag=this,tag=ww.fool] run function ww:player/increment_kill
execute if entity @n[tag=this,tag=ww.fool] run return run function ww:queue/_add {task: 'player/death/bewitched'}

# not fool
function ww:player/role/_remove_state {path: 'bewitched'}
function ww:chat/_dm {type: 'info', message: '你的蠱毒被清除了'}