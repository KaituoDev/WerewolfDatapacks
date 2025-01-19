# context: @s = villager
# location: at @s

execute unless entity @e[predicate=ww:alive,tag=!ww.wolf_kind,distance=..10] run return fail
scoreboard players set @s ww.ai.implant_bomb_used 1

execute if score %days ww.system matches ..1 run return fail

data modify storage ww:temp implantBombInput set value {}
data modify storage ww:temp implantBombInput.uuid set from entity @n[predicate=ww:alive,tag=!ww.wolf_kind] UUID
function ww:skill/implant_bomb/_implant with storage ww:temp implantBombInput