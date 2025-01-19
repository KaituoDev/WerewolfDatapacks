# context: @s = player | villager

data modify storage ww:temp teleportInput set value {}
data modify storage ww:temp teleportInput.marker set from entity @n[type=marker,tag=ww.switchAllOrigin,sort=furthest] UUID
function ww:skill/switch_all/_teleport with storage ww:temp teleportInput
