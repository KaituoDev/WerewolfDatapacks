# context: @s = villager
# location: at @s

execute unless entity @e[predicate=ww:alive,tag=ww.wolf_kind,scores={ww.vote_summary=1..}] run return fail
scoreboard players set @s ww.ai.explosion_used 1

execute if score %aliveWolfKind ww.system matches 1 run return fail

function ww:skill/explosion/run