# context: @s = player
# storage: ww:temp configInfoPool
# scores: %poolTotal ww.system
# inputs: {id, name}

scoreboard players set %count ww.var 0
$execute if data storage ww:memory poolKeys[{id: '$(id)'}] store result score %count ww.var run \
  data get storage ww:memory pool.'$(id)'

$function ww:role/_find_by_id {id: '$(id)'}

$data modify storage ww:temp constructInput set value {name: '$(name)'}
data modify storage ww:temp constructInput.campaign set from storage ww:output roleObj.campaign.id

scoreboard players operation %poolTotal ww.system += %count ww.var
execute store result storage ww:temp constructInput.count int 1 run scoreboard players get %count ww.var
execute if score %count ww.var matches 1.. run function ww:config/info/pool/_construct_message with storage ww:temp constructInput