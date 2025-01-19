# context: @s = player | villager
# inputs: {uuid, askCampaign}
# storage: ww:temp storeDataInput

# not fool
$execute unless entity @s[tag=ww.fool] if entity @n[nbt={UUID:$(uuid)},tag=$(askCampaign)] \
 run data modify storage ww:temp storeDataInput.result set value '是'
$execute unless entity @s[tag=ww.fool] if entity @n[nbt={UUID:$(uuid)},tag=!$(askCampaign)] \
 run data modify storage ww:temp storeDataInput.result set value '不是'

# is fool
$execute if entity @s[tag=ww.fool] if entity @n[nbt={UUID:$(uuid)},tag=$(askCampaign)] \
 run data modify storage ww:temp storeDataInput.result set value '不是'
$execute if entity @s[tag=ww.fool] if entity @n[nbt={UUID:$(uuid)},tag=!$(askCampaign)] \
 run data modify storage ww:temp storeDataInput.result set value '是'
