# context: @s = player | villager being attacked by lunatic_sword, on attacker = attacker
# inputs: {attackerCampaignTag}

tag @e[tag=this_victim] remove this_victim
tag @s add this_victim
$execute if entity @n[tag=this_victim,tag=!$(attackerCampaignTag)] on attacker run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"selector":"@n[tag=this_victim]","color":"yellow","bold":true},{"text":" 為敵對陣營","color":"red","bold":true}]' \
}

$execute if entity @n[tag=this_victim,tag=$(attackerCampaignTag)] on attacker run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"selector":"@n[tag=this_victim]","color":"yellow","bold":true},{"text":" 為我方陣營","color":"green","bold":true}]' \
}

# increment kill
$execute if entity @n[tag=this_victim,tag=!$(attackerCampaignTag)] on attacker run \
  function ww:player/increment_kill

# kill opponent if different campaign from the attacker
$execute as @n[tag=this_victim,tag=!$(attackerCampaignTag)] run \
  function ww:player/death/lunatic_sword

tag @s remove this_victim