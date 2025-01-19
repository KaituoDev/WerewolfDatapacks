# context: @s = player | villager
# inputs: {uuid, result, campaign, player}

$function ww:player/role/_set_state {path: 'questionRecords."$(uuid)"', value: \
  {player: '$(player)', uuid: $(uuid), result: '$(result)', campaign: '$(campaign)'} \
}