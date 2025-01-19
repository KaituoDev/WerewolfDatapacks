# context: server
# inputs: {count}

$execute store result score %count ww.var if entity @e[predicate=ww:alive,scores={ww.vote_summary=$(count)}]

# returns 1 if masochist ending
$execute if score %count ww.var matches 1 as @n[predicate=ww:alive,scores={ww.vote_summary=$(count)}] run \
  return run function ww:game/elimination/execute

# count > 1
execute store result score %index ww.var run data get storage ww:memory config.VOTE_DRAW_HANDLING

# executes everyone, returns 1 if masochist ending
$execute if score %index ww.var matches 2 run return run function ww:game/elimination/_execute_all {count: $(count)}

# everyone lives
execute if score %index ww.var matches 1 as @a run \
  function ww:chat/_dm {type: 'rich_info',message:'[{"text":"发生平票, 全员安全度过这天","color":"white"}]'}

# default 0, randomly pick one player, returns 1 if masochist ending
$execute if score %index ww.var matches 0 as @e[predicate=ww:alive,scores={ww.vote_summary=$(count)},limit=1,sort=random] run \
  return run function ww:game/elimination/execute

return 0