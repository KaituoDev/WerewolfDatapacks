## OUTPUT: storage ww:game player.name

data modify storage ww:game player.name set value '{"text":""}'
loot replace block 0 0 0 container.0 loot ww:player_head
data modify storage ww:game player.name set from block 0 0 0 Items[0].tag.SkullOwner.Name