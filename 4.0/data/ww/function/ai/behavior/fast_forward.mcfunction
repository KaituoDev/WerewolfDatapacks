# context: @s = villager
# location: at @s

scoreboard players set @s ww.ai.fast_forward_used 1
function ww:queue/_add_ai {task: 'time/fast_forward'}