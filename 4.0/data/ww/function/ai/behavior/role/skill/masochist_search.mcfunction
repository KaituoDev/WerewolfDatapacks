# context: @s = villager
# location: at @s

scoreboard players set @s ww.ai.masochist_search_used 1
scoreboard players operation @s ww.masochistSearch = @n[sort=random,predicate=ww:alive,distance=0.01..] ww.globalId
function ww:book/action/masochist_search
