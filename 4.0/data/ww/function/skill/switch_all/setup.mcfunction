# context: @s = player | villager
# location: at @s

data modify storage ww:temp setupMarkerInput set value {}
data modify storage ww:temp setupMarkerInput.rotation set from entity @s Rotation

execute summon marker run function ww:skill/switch_all/_setup_marker with storage ww:temp setupMarkerInput
