## CONTEXT: an alive pair exists, attempting to find related cupid
## OUTPUT: tagging a cupid who is related to the existing pair

execute as @a[tag=cupid,tag=alive] if score @s id = @p[tag=alive,tag=pairA] cupidSource run tag @s add currentCupid