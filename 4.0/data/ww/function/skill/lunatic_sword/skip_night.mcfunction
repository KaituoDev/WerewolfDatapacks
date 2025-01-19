# context: server

execute unless predicate ww:started run return fail
execute unless predicate ww:is_night run return fail

scoreboard players set %lunaticSkipNight ww.system 0
execute as @a run function ww:chat/_dm {type: 'info', message: '有人死亡，直接进入下一天'}
function ww:time/skip