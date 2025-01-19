# context: @s = player | villager
# inputs: {uuid, role, campaign, color, player}

$function ww:player/role/_set_state {path: 'prophecy."$(uuid)"', value: \
  {player: '$(player)', uuid: $(uuid), role: '$(role)', campaign: '$(campaign)', color: '$(color)'} \
}